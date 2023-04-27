# Large Oracle VM

You can get a single VM with 4 vCPUs, 24GB RAM and 200GB of storage for free!
But where's the issue? It's an ARM based VM and of course you need to get used to the Oracle cloud.

I cannot remember every step in detail but the main tasks looks a little like this:

1. Close the introduction guide popup
2. Head over to virtual cloud networks
3. Click on "Start VNC Assistant"
4. Fill in the required stuff, don't forget to check IPv6 if wished
5. Choose a method how to deploy your VM (see sections below)

Feel free to open a pull request to improve this guide!
Please also note, that IPv6 is broken at the time of creation.

## Method A: Deploy manually

Pre-hints when using the Oracle cloud:

1. During login, it might happen that you get stuck in the web-ui's when you do not allow cookies or when there are old cookies. Just reload and start a new login process.
2. From time to time, oracle requests you to change your password.

Setup:

1. Go back to virtual networks
2. Open your fresh created network
3. Select "Networksecuritygroups" on the left side
4. Create new groups for the ports you want to allow ingress traffic for
   1. As _Sourcetype_ select `CIDR` with a source-CIDR of `0.0.0.0/0` (or `::/0` for IPv6
   2. As IP-Protocol SSH (22) should be at least present
   3. If desired, create more rules for e.g. HTTP (80) or HTTPS (443)
5. Head over to Instances
6. Create a new Instance
   1. Choose a name
   2. An availability zone
   3. Select the Shape first (Ampere -> _VM.Standard.A1.Flex_) and choose with the sliders 4 cores and 24GB of RAM
   4. Change the image to your desired distribution
   5. In the network section select "Additional options"
      1. Check "Use networksecuritygroups to control the traffic"
      2. Select your previously configured security groups (use the "add more" button below to add more than one)
   6. In the SSH key section select "insert public keys" and paste your public key here
   7. In the boot volume section select "userdefined bootvolume size"
      1. Use 200GB
   8. Hit create
7. Your VM should now boot

## Method B: Use terraform

If you want to use terraform, you can just use the example code provided in this directory. I assume that you are somewhat familiar wokring with terraform.

There are some special things to consider when using terraform:

1. The code expects that you have a config file for OCI: `~/.oci/config`. It will extract the `tenant_id` to reduce tedious work.
2. Check and alter the image name. This may vary for each location.
3. You might also leave the image name empty, this would create a VM with the latest version of Ubuntu 22.04 __BUT__ this will cause issues. When there's a new _latest_ image available, the mechanism would detect a change and suggest to __replace__ your VM. So this might only be useful if you want to quickly test stuff.
4. The script expects that you'll use the 200GB of storage exclusively for this VM. The flavor (4 cores 24GB RAM) are also hardcoded.
5. The script expects that the first network the API presents, is the correct one to use. Make sure you have only configured one network or alter the logic here.
6. If you want to allow more ports than 22 (SSH) and 80 (HTTP), just extend the list in the main.tf file.
