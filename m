Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB4111E6DE
	for <lists+usrp-users@lfdr.de>; Fri, 13 Dec 2019 16:41:05 +0100 (CET)
Received: from [::1] (port=35936 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ifn3p-0007Wk-3C; Fri, 13 Dec 2019 10:40:57 -0500
Received: from smtpout02-ext2.partage.renater.fr ([194.254.241.33]:37862
 helo=smtpout02-ext1.partage.renater.fr)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <Thomas.Harder@oca.eu>) id 1ifn3k-0007SY-Bi
 for usrp-users@lists.ettus.com; Fri, 13 Dec 2019 10:40:52 -0500
Received: from zmtaauth02.partage.renater.fr (zmtaauth02.partage.renater.fr
 [194.254.241.25])
 by smtpout20.partage.renater.fr (Postfix) with ESMTP id 5498BBFED3;
 Fri, 13 Dec 2019 16:40:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zmtaauth02.partage.renater.fr (Postfix) with ESMTP id 40F80A00EF;
 Fri, 13 Dec 2019 16:40:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at zmtaauth02.partage.renater.fr
Received: from zmtaauth02.partage.renater.fr ([127.0.0.1])
 by localhost (zmtaauth02.partage.renater.fr [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id e9FrlQghiSiF; Fri, 13 Dec 2019 16:40:07 +0100 (CET)
Received: from [IPv6:::ffff:10.252.71.233] (unknown [194.254.241.250])
 by zmtaauth02.partage.renater.fr (Postfix) with ESMTPA id E3615A00DD;
 Fri, 13 Dec 2019 16:40:06 +0100 (CET)
MIME-Version: 1.0
To: Nate Temple <nate.temple@ettus.com>
Date: Fri, 13 Dec 2019 16:40:07 +0100
Importance: normal
X-Priority: 3
In-Reply-To: <CAL263iy3R7U0bk7hp3_JEDLCSD1JUBh-Oc2Jt4OndeU0mpM-Tw@mail.gmail.com>
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
 <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
 <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
 <CAB__hTTijCzqgJL9ab+Dh+8g8ZLRh2o2A3yuRS8fG23AhF7tvA@mail.gmail.com>
 <20191211100521.A8A031400BB@zmtaauth01.partage.renater.fr>
 <CAB__hTRbL+ngUxNJSSdk6MVFUFeNd-DZkP1uMFTnEtUagRTGjg@mail.gmail.com>
 <CAL263ixtV7hgkCJHFwWUre0SkUvetKedEYXJkgFjCA_bh8BxiA@mail.gmail.com>
 <CAB__hTR1xP-8jq-Juy_veyy-NoS4bVStqbjkt_-N7X8pNL-36w@mail.gmail.com>
 <20191211171834.5CF5CA00AC@zmtaauth02.partage.renater.fr>
 <CAL263izruTY5uFr9KRWHuAJ18t0U0ugB8GKPFpX+GjZ=nRjywg@mail.gmail.com>
 <CAL263iy3R7U0bk7hp3_JEDLCSD1JUBh-Oc2Jt4OndeU0mpM-Tw@mail.gmail.com>
Message-Id: <20191213154006.E3615A00DD@zmtaauth02.partage.renater.fr>
Subject: Re: [USRP-users] transmitting on two channels with replay block
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Thomas Harder via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas Harder <Thomas.Harder@oca.eu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1505010732324746743=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1505010732324746743==
Content-Type: multipart/alternative;
	boundary="_A4899227-3251-4501-AD29-5ABBBE5575CF_"

--_A4899227-3251-4501-AD29-5ABBBE5575CF_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Nate, Hi Rob,
You can=E2=80=99t believe how much I appreciate your help.
Finally, after trying it for months: IT WORKS!!!!!
TX streaming two different waveforms on the two channels of the USRP X310 w=
ith the two UBX-160 daughterboards with full bandwidth of 200MS/s per chann=
els.
I would like to invite you for a champagne.
I changed the rfnoc_ce_default_inst_x310.v file as you described below and =
built the XGS image with the full design vivado 2017.4  version (free one m=
onth trial license). UHD v3.14.1.1 needs this version because before I had =
vivado 2018.3 which was not working.
Setting the CPU governor to performance, setting the network buffers as des=
cribed and the MTU to 8000 and setting up DPDK as described in the ettus ma=
nual. Even without disabling hyper threading and KTPI with my host CPU (16G=
B RAM, Intel Xeon W-2125 CPU@ 4.5GHz x8).
Using dual 10Gbit Ethernet and a changed version of the example =E2=80=9Ctx=
_samples_from_file=E2=80=9D by reading in a second file with my second wave=
form.

Thank you a lot for your help.
Thomas

From: Nate Temple
Sent: Wednesday, December 11, 2019 7:00 PM
To: Thomas Harder
Cc: Rob Kossler; USRP-users@lists.ettus.com; EJ Kreinar
Subject: Re: [USRP-users] transmitting on two channels with replay block



On Wed, Dec 11, 2019 at 9:33 AM Nate Temple <nate.temple@ettus.com> wrote:
Hi Thomas,

You will need to apply these changes below to the fpga-src/usrp3/top/x300/r=
fnoc_ce_default_inst_x310.v file. This will add additional SRAM FIFOs, whic=
h is basically what the "XGS" / SRAM image is. Make sure to start with the =
v3.14.1.1 fpga sources. (run git submodule init; git submodule update; in y=
our UHD repo after checking out v3.14.1.1).

########################################################################

diff --git a/usrp3/top/x300/rfnoc_ce_default_inst_x310.v b/usrp3/top/x300/r=
fnoc_ce_default_inst_x310.v
index d20a64962..bcb4c3c32 100644
--- a/usrp3/top/x300/rfnoc_ce_default_inst_x310.v
+++ b/usrp3/top/x300/rfnoc_ce_default_inst_x310.v
@@ -1,4 +1,4 @@
- =C2=A0localparam NUM_CE =3D 4; =C2=A0// Must be no more than 10 (6 ports =
taken by transport and IO connected CEs)
+ =C2=A0localparam NUM_CE =3D 6; =C2=A0// Must be no more than 10 (6 ports =
taken by transport and IO connected CEs)

=C2=A0 wire [NUM_CE*64-1:0] ce_flat_o_tdata, ce_flat_i_tdata;
=C2=A0 wire [63:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ce_o_tdata[0:NUM_CE-1]=
, ce_i_tdata[0:NUM_CE-1];
@@ -46,7 +46,9 @@
=C2=A0 genvar n;
=C2=A0 generate
=C2=A0 =C2=A0 for (n =3D 4; n < NUM_CE; n =3D n + 1) begin
- =C2=A0 =C2=A0 =C2=A0noc_block_axi_fifo_loopback inst_noc_block_axi_fifo_l=
oopback (
+ =C2=A0 =C2=A0 =C2=A0noc_block_axi_fifo_loopback #(
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0.STR_SINK_FIFOSIZE(15)
+ =C2=A0 =C2=A0 =C2=A0) inst_noc_block_axi_fifo_loopback (
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .bus_clk(bus_clk), .bus_rst(bus_rst),
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .ce_clk(ce_clk), .ce_rst(ce_rst),
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .i_tdata(ce_o_tdata[n]), .i_tlast(ce_o_tlast[n]=
), .i_tvalid(ce_o_tvalid[n]), .i_tready(ce_o_tready[n]),

########################################################################


After making these modifications to the FPGA sources, you can build a FPGA =
image with the commands:

cd fpga-src/usrp3/top/x300/
source setupenv.sh
make X310_XG

Note: Even though you are calling X310_XG, it is really a "XGS" image since=
 it has the additional SRAM fifos.

After that has completed building, you should write that FPGA image to the =
X310 using uhd_image_loader.

uhd_image_lodaer --args "addr=3D192.168.40.2,type=3Dx300" --fpga-path /path=
/to/x300.bit

After the FPGA image load and restarting the USRP, run uhd_usrp_probe and a=
t the end of the output where the RFNoC blocks are listed, you should see t=
wo additional FIFO blocks:

FIFO_0
FIFO_1





Random performance tuning notes:

* Ensure your CPU governor is set to performance:

sudo apt install cpufrequtils

To set performance for all cores:

for ((i=3D0;i<$(nproc);i++)); do sudo cpufreq-set -c $i -r -g performance; =
done


Verify with:

cpufreq-info

* Set your network buffers

sudo sysctl -w net.core.rmem_max=3D625000000
sudo sysctl -w net.core.wmem_max=3D625000000

* Set the MTU to 8000 on your 10Gb NICs

* Ensure you have pthreads enabled for your user
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling

http://files.ettus.com/manual/page_general.html#general_threading


* Disable hyper threading in bios. This will typically give about a 10% boo=
st in core performance if you can work without the additional cores. You'll=
 need to update your cpu core list in DPDK.

* Disable KPTI for spectra/meltdown. I would recommend to try disabling the=
 KPTI protections for your CPU if the machine is offline, you may see a 10-=
15% performance increase.

This can be done by adding the lines below to your /etc/default/grub at GRU=
B_CMDLINE_LINUX_DEFAULT=3D"", then running sudo update-grub and rebooting.

pti=3Doff spectre_v2=3Doff l1tf=3Doff nospec_store_bypass_disable no_stf_ba=
rrier

Note, this disables protections against Meltdown/Spectra (links below). So =
if you try to do this, I would recommend disconnecting that host from any i=
nternet connected network.

https://en.wikipedia.org/wiki/Meltdown_(security_vulnerability)
https://en.wikipedia.org/wiki/Spectre_(security_vulnerability)

* There are additional recommendations here from Intel on various adjustmen=
ts you can do to improve performance with DPDK:
http://doc.dpdk.org/guides/linux_gsg/nic_perf_intel_platform.html

Specifically I would recommend to try section 10.1.3 #3 where you isolate t=
he CPU cores that are used for DPDK.

* Here is a performance report from Intel on DPDK 17.11: https://fast.dpdk.=
org/doc/perf/DPDK_17_11_Intel_NIC_performance_report.pdf

In the tables of boot and bio's settings the additional CPU options of nohz=
_full=3D"" and rcu_nocbs=3D"" are added to their kernel configs, this may h=
elp as well.

Additionally they made the changes listed below:

CPU Power and Performance Policy <Performance> (you should already be doing=
 this)
CPU C-state Disabled
CPU P-state Disabled
Enhanced Intel=C2=AE Speedstep=C2=AE Tech Disabled
Turbo Boost Disabled




Regards,
Nate Temple

On Wed, Dec 11, 2019 at 9:18 AM Thomas Harder <Thomas.Harder@oca.eu> wrote:
Rob,
I am definitely interested in your costum =E2=80=98txarb=E2=80=99 RFNoC blo=
ck. For now I am using tx waveforms of about 10.000 samples, so the 2^15 sa=
mples would be sufficient.
I was already searching what exactly this SRAM image means. Because today I=
 was able to setup DPDK with UHD 3.14.1 and the benchmark_rate code(excactl=
y described as in the mail of Nate) was still full of underruns with the st=
ock XG fpga image which I downloaded with uhd_images_downloader. So I will =
also try to build a second FIFO block, since I have still for two weeks the=
 test version of Vivado.
Thomas
=C2=A0
=C2=A0
From: Rob Kossler
Sent: Wednesday, December 11, 2019 4:50 PM
To: Thomas Harder; Nate Temple
Subject: Re: [USRP-users] transmitting on two channels with replay block
=C2=A0
Thomas,
I believe that Nate and I were saying basically the same thing.=C2=A0 When =
he referred to an SRAM image, I believe that this means an image with the F=
IFO blocks.=C2=A0 I believe that such an image needs to be built by the use=
r (rather than downloaded using uhd_images_downloader), but I'm not 100% ce=
rtain.
=C2=A0
If you are interested, I have a custom 'txarb' RFNoC block that implements =
my 2nd option below.=C2=A0 By default, it includes storage of up to 2^15 sa=
mples, but this can be modified using an input parameter (FPGA resources pe=
rmitting). This block requires some specialized behavior, but it is pretty =
simple.=C2=A0 Similar to the Replay block, you need to construct a custom R=
FNoC graph that connects the txarb block to the Radio.=C2=A0 When you want =
to stream, you need to stream just one full waveform to the txarb=C2=A0bloc=
k.=C2=A0 Once the txarb=C2=A0block receives end-of-burst, it will automatic=
ally stop "recording the samples to memory" and begin "playing the samples =
from memory repeatedly".=C2=A0 The streaming will continue indefinitely unt=
il you send a new tx waveform.=C2=A0 If the new tx waveform contains less t=
han 2 samples, the streaming is turned off.=C2=A0 There are no control regi=
sters to worry about. Timed behavior is supported because the block preserv=
es the command time of the incoming stream from the host when it starts pla=
ying out.
=C2=A0
It is not terribly difficult to build this custom block, but if you haven't=
 built out-of-tree RFNOC blocks before, it might be easiest to just put thi=
s block in-tree (in the Ettus folder structure) and manually modify makefil=
es as needed. Let me know if you are interested.
Rob
=C2=A0
=C2=A0
On Wed, Dec 11, 2019 at 10:07 AM Nate Temple <nate.temple@ettus.com> wrote:
Hi Thomas,

One option instead of using the Replay block could be to stream 2x 200e6 fr=
om your host.=20

On the X310, this requires using a SRAM image and DPDK. DPDK support was ad=
ded with UHD 3.14.1.0 for the X310, I'd suggest to use 3.14.1.1 at this tim=
e though.

Some links on DPDK:

https://www.dpdk.org/
http://files.ettus.com/manual/page_dpdk.html

I've been able to run 2x2 @ 200e6 with the X310 with DPDK using a 4 GHz CPU=
.

./benchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_rate 200e6 --tx_cha=
nnels 0,1 --args "addr=3D192.168.10.2,second_addr=3D192.168.20.2,use_dpdk=
=3D1,num_recv_frames=3D512,enable_tx_dual_eth=3D1,skip_ddc=3D1,skip_duc=3D1=
"

num_recv_frames=3D512 can help if you're seeing overflows.

enable_tx_dual_eth=3D1 is required for 2x TX @ 200e6

skip_ddc=3D1,skip_duc=3D1 can help as well since you'd be sending at full r=
ate.



Regards,
Nate Temple
=C2=A0
On Wed, Dec 11, 2019 at 7:03 AM Rob Kossler via USRP-users <usrp-users@list=
s.ettus.com> wrote:
I do not think it is possible using the stock FPGA image.=C2=A0 However, I =
can think of a couple of possibilities
=E2=80=A2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 On the N310, Ettus includes 4=
 FIFO blocks (rather than the DmaFIFO which used the off-FPGA RAM for memor=
y), to provide capability for 4x125 MS/s streaming. Perhaps if you built an=
 X310 FPGA image with 2 such FIFO blocks, you could use these rather than t=
he DmaFIFO and achieve the desired streaming.=C2=A0 Note that this requires=
 a Vivado license to build your own FPGA image, but does not require FPGA e=
xperience because you would be building an image with "stock" blocks.=C2=A0=
 One caution though is that streaming at this very high rate still requires=
 a high performance host and so it is still possible that you would have un=
derruns if your host could not keep up.=C2=A0 If you go this route, I belie=
ve you will likely need to use the "DPDK" capability which is a bit of a pa=
in to configure and get it working properly.
=E2=80=A2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Another possibility is to cre=
ate a custom RFNoC block that is similar to the replay block but that uses =
FPGA memory to store a fixed duration waveform and then plays it out cyclic=
ally like the replay block. The Ettus 'window' RFNoC block provides a good =
example of how to store coefficients and play them out repeatedly.=C2=A0 Bu=
t, making the needed modifications is not a trivial task except for someone=
 who is pretty good at FPGA programming.
Given that you were trying the replay block, I'm guessing that your Tx wave=
forms are of fixed duration.=C2=A0 What is the duration (in number of sampl=
es) that you require?
Rob
=C2=A0
On Wed, Dec 11, 2019 at 5:05 AM Thomas Harder <Thomas.Harder@oca.eu> wrote:
Thank you Rob for this comment.
But I am not sure if I understand you correctly. Do you want to say, that i=
t is IMPOSSIBLE to stream TX two different waveforms synchronized =C2=A0on =
the 2 channels of the x310 with the full bandwidth of 200MS/s on each chann=
el?
That is what I am trying the last 6 months full time, starting with Labview=
 under windows and then UHD under Linux with a Dell Precision 5820 desktop =
(16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI connection, dual 10Gbi=
t connection(Intel X520-DA2), the replay block recently: always the same re=
sult: continuous underruns.
If you can confirm that this is not possible without an important FPGA chan=
ge (because I have no experience in this field and I have not the time to i=
nvest into it), I must search for another solution to create two different =
synchronized RF waveforms with 160MHz bandwidth (optical, electronical,=E2=
=80=A6) because this will be just a part of my experimental setup but it is=
 crucial to go on .
I am thankful for any advise,
Thomas
=C2=A0
=C2=A0
From: Rob Kossler
Sent: Tuesday, December 10, 2019 5:01 AM
To: Thomas Harder
Cc: Sam Reiter; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] transmitting on two channels with replay block
=C2=A0
Apart from solving the underrun issue, there is also an issue with synchron=
ization.=C2=A0 The replay block doesn't presently support timed commands.
=C2=A0
And, as a side note, the issue with streaming from the host is not just the=
 host.=C2=A0 The DMA FIFO has a maximum bandwidth of something like 600 MS/=
s (combination of all inputs and outputs) that precludes streaming 400 MS/s=
 in and out of the block simultaneously.=C2=A0 So, even if the host could k=
eep up, the FIFO could not.
Rob
=C2=A0
On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
Hi Sam,
Thank you for your reply.
This morning I set the MCR to 184.32 and I am still having continuous under=
runs using also=20
replay_ctrl->get_record_fullness
for both channels.
=C2=A0
But since I need the full bandwidth of 160MHz I would like implement a seco=
nd replay block in my fpga image.
=C2=A0
Could anyone help me with this?=20
I am really new in fpga programming and for the image with one replay block=
 I was just following the instructions in https://kb.ettus.com/Using_the_RF=
NoC_Replay_Block.
Thank you,
Thomas
=C2=A0
=C2=A0
From: Sam Reiter
Sent: Friday, December 6, 2019 10:23 PM
To: Thomas Harder
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] transmitting on two channels with replay block
=C2=A0
Thomas,
=C2=A0
Upon further investigation, we may be running up to a practical limit of a =
single CHDR interface rather than an issue with your code. A single replay =
block servicing two radios will have a max (theoretical) rate of 187.5 MSPS=
 on either channel. This means that you might be able to squeeze full rate =
out on 2 channels with an MCR of 184.32, but that's cutting it pretty close=
. Sounds like 2 channels at 200 MSPS with a replay setup will require 2 rep=
lay blocks serving each channel independently. If you end up trying either =
of the above out, I'd be curious to know what results you observe.
=C2=A0
Sam Reiter=20
Ettus Research
=C2=A0
=C2=A0
On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:
Thomas,
=C2=A0
I'd need to set it up on my end, but I believe you can TX two distinct wave=
forms from a single replay block instance. You'd need to make sure that you=
r adding your data to the buffer in separate locations and at an address th=
at is a multiple of 8 bytes (which it looks like you're doing from the abov=
e snippets). Are you seeing continuous underruns, or just a handful at the =
beginning on the run? Does your duplicated code also use:
=C2=A0
replay_ctrl->get_record_fullness
=C2=A0
on both channels before kicking off the stream start?
=C2=A0
Sam Reiter=C2=A0
Ettus Research
=C2=A0
On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
Hello everyone,
Is it possible to transmit two different waveforms on the two channels of t=
he USRP X310 with the two UBX-160 daughterboards?
I want to transmit two different waveforms simultaneous (synchronized ) on =
the two channels of the USRP with the full sample rate of 200 MS/s. I tried=
 already to do it with a dual 10Gbit-ethernet connection and I seemed to be=
 limited by my computer. Now I am trying to do it with the replay block.
=C2=A0
I built the FPGA image with one Replay block as described in https://kb.ett=
us.com/Using_the_RFNoC_Replay_Block to run the example =E2=80=9Creplay_samp=
les_from_file=E2=80=9D and it is working fine if I transmit just on one cha=
nnel. Now I was modifying the code by connecting the replay block to both c=
hannels:
replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blockid,tx=
_chan,replay_spp);
replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_blockid1,=
tx_chan,replay_spp);
=C2=A0
and writing the same waveform into another region of the DRAM-buffer:
replay_ctrl->config_record(0,words_to_replay*replay_word_size, replay_chan)=
;
replay_ctrl->config_record(20000,words_to_replay*replay_word_size, replay_c=
han1);
and
replay_ctrl->config_play(0,words_to_replay*replay_word_size, replay_chan);
replay_ctrl->config_play(20000,words_to_replay*replay_word_size, replay_cha=
n1);
=C2=A0
where=20
words_to_replay*replay_word_size=3D16000
replay_chan=3D0
replay_chan1=3D1
tx_blockid=3D0/Radio_0
tx_blockid=3D0/Radio_1
=C2=A0
then I stream my waveforms to the replay block as defined in the example an=
d I start to replay the data:
replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);
=C2=A0
It works but with plenty of Underflows!!
=C2=A0
So what does it mean when it says in the manual:
=E2=80=9CNote that the record and playback buffers do not need to the same,=
 allowing a single Replay block to both record and playback to different re=
gions of memory simultaneously.=E2=80=9D
(https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?
=C2=A0
Because in the manual it says also:
=E2=80=9CThe replay block has the following features: One input and one out=
put=E2=80=9D
(https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.ht=
ml)
=C2=A0
So if the replay block has just one output why does it have two channels co=
nnected to it (replay_chan=3D 0 and 1)?
=C2=A0
If one replay block can just stream to one channel at the same time, can I =
implement easily a second replay block in the FPGA to stream on the two cha=
nnels of my USRP two different waveforms simultaneously?
=C2=A0
Thank you,
Thomas
=C2=A0
=C2=A0
=C2=A0
=C2=A0
=C2=A0
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
=C2=A0
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
=C2=A0
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
=C2=A0


--_A4899227-3251-4501-AD29-5ABBBE5575CF_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
h3
	{mso-style-priority:9;
	mso-style-link:"Heading 3 Char";
	margin-top:2.0pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Calibri Light",sans-serif;
	color:#1F3763;
	font-weight:normal;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.Heading3Char
	{mso-style-name:"Heading 3 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 3";
	font-family:"Calibri Light",sans-serif;
	color:#1F3763;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal>Hi Nate, Hi Rob,</p><p class=3DMsoNo=
rmal>You can=E2=80=99t believe how much I appreciate your help.</p><h3>Fina=
lly, after trying it for months: IT WORKS!!!!!</h3><h3><b>TX streaming two =
different waveforms on the two channels of the USRP X310 with the two UBX-1=
60 daughterboards with full bandwidth of 200MS/s per channels.<o:p></o:p></=
b></h3><h3>I would like to invite you for a champagne.<span style=3D'font-s=
ize:11.0pt'><o:p></o:p></span></h3><p class=3DMsoNormal>I changed the <span=
 style=3D'font-family:"Arial",sans-serif'>rfnoc_ce_default_inst_x310.v file=
 as you described below and built the XGS image with the full design vivado=
 2017.4=C2=A0 version (free one month trial license). UHD v3.14.1.1 needs t=
his version because before I had vivado 2018.3 which was not working.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-family:"Arial",san=
s-serif'>Setting the CPU governor to performance, setting the network buffe=
rs as described and the MTU to 8000 and setting up DPDK as described in the=
 ettus manual. Even without disabling hyper threading and KTPI with my host=
 CPU (</span>16GB RAM, Intel Xeon W-2125 CPU@ 4.5GHz x8<span style=3D'font-=
family:"Arial",sans-serif'>).<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an style=3D'font-family:"Arial",sans-serif'>Using dual 10Gbit Ethernet and =
a changed version of the example =E2=80=9Ctx_samples_from_file=E2=80=9D by =
reading in a second file with my second waveform.<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-family:"Arial",sans-serif'><o:p>&nbsp;=
</o:p></span></p><p class=3DMsoNormal><span style=3D'font-family:"Arial",sa=
ns-serif'>Thank you a lot for your help.<o:p></o:p></span></p><p class=3DMs=
oNormal><span style=3D'font-family:"Arial",sans-serif'>Thomas<o:p></o:p></s=
pan></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div style=3D'mso-element=
:para-border-div;border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0=
in 0in 0in'><p class=3DMsoNormal style=3D'border:none;padding:0in'><b>From:=
 </b><a href=3D"mailto:nate.temple@ettus.com">Nate Temple</a><br><b>Sent: <=
/b>Wednesday, December 11, 2019 7:00 PM<br><b>To: </b><a href=3D"mailto:Tho=
mas.Harder@oca.eu">Thomas Harder</a><br><b>Cc: </b><a href=3D"mailto:rkossl=
er@nd.edu">Rob Kossler</a>; <a href=3D"mailto:usrp-users@lists.ettus.com">U=
SRP-users@lists.ettus.com</a>; <a href=3D"mailto:ejkreinar@gmail.com">EJ Kr=
einar</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two channels =
with replay block</p></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><=
div><p class=3DMsoNormal><span style=3D'font-family:"Arial",sans-serif'><o:=
p>&nbsp;</o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p>=
</p><div><div><p class=3DMsoNormal>On Wed, Dec 11, 2019 at 9:33 AM Nate Tem=
ple &lt;<a href=3D"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&=
gt; wrote:</p></div><blockquote style=3D'border:none;border-left:solid #CCC=
CCC 1.0pt;padding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;marg=
in-right:0in;margin-bottom:5.0pt'><div><div><p class=3DMsoNormal style=3D'm=
argin-left:4.8pt'><span style=3D'font-family:"Arial",sans-serif'>Hi Thomas,=
<br><br>You will need to apply these changes below to the fpga-src/usrp3/to=
p/x300/rfnoc_ce_default_inst_x310.v file. This will add additional SRAM FIF=
Os, which is basically what the &quot;XGS&quot; / SRAM image is. Make sure =
to start with the v3.14.1.1 fpga sources. (run git submodule init; git subm=
odule update; in your UHD repo after checking out v3.14.1.1).<br><br>######=
##################################################################<br><br>d=
iff --git a/usrp3/top/x300/rfnoc_ce_default_inst_x310.v b/usrp3/top/x300/rf=
noc_ce_default_inst_x310.v<br>index d20a64962..bcb4c3c32 100644<br>--- a/us=
rp3/top/x300/rfnoc_ce_default_inst_x310.v<br>+++ b/usrp3/top/x300/rfnoc_ce_=
default_inst_x310.v<br>@@ -1,4 +1,4 @@<br>- &nbsp;localparam NUM_CE =3D 4; =
&nbsp;// Must be no more than 10 (6 ports taken by transport and IO connect=
ed CEs)<br>+ &nbsp;localparam NUM_CE =3D 6; &nbsp;// Must be no more than 1=
0 (6 ports taken by transport and IO connected CEs)<br><br>&nbsp; wire [NUM=
_CE*64-1:0] ce_flat_o_tdata, ce_flat_i_tdata;<br>&nbsp; wire [63:0] &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;ce_o_tdata[0:NUM_CE-1], ce_i_tdata[0:NUM_CE-1];<=
br>@@ -46,7 +46,9 @@<br>&nbsp; genvar n;<br>&nbsp; generate<br>&nbsp; &nbsp=
; for (n =3D 4; n &lt; NUM_CE; n =3D n + 1) begin<br>- &nbsp; &nbsp; &nbsp;=
noc_block_axi_fifo_loopback inst_noc_block_axi_fifo_loopback (<br>+ &nbsp; =
&nbsp; &nbsp;noc_block_axi_fifo_loopback #(<br>+ &nbsp; &nbsp; &nbsp; &nbsp=
;.STR_SINK_FIFOSIZE(15)<br>+ &nbsp; &nbsp; &nbsp;) inst_noc_block_axi_fifo_=
loopback (<br>&nbsp; &nbsp; &nbsp; &nbsp; .bus_clk(bus_clk), .bus_rst(bus_r=
st),<br>&nbsp; &nbsp; &nbsp; &nbsp; .ce_clk(ce_clk), .ce_rst(ce_rst),<br>&n=
bsp; &nbsp; &nbsp; &nbsp; .i_tdata(ce_o_tdata[n]), .i_tlast(ce_o_tlast[n]),=
 .i_tvalid(ce_o_tvalid[n]), .i_tready(ce_o_tready[n]),<br><br>#############=
###########################################################<br><br><br>Afte=
r making these modifications to the FPGA sources, you can build a FPGA imag=
e with the commands:<br><br>cd fpga-src/usrp3/top/x300/<br>source setupenv.=
sh<br>make X310_XG<br><br>Note: Even though you are calling X310_XG, it is =
really a &quot;XGS&quot; image since it has the additional SRAM fifos.<br><=
br>After that has completed building, you should write that FPGA image to t=
he X310 using uhd_image_loader.<br><br>uhd_image_lodaer --args &quot;addr=
=3D192.168.40.2,type=3Dx300&quot; --fpga-path /path/to/x300.bit<br><br>Afte=
r the FPGA image load and restarting the USRP, run uhd_usrp_probe and at th=
e end of the output where the RFNoC blocks are listed, you should see two a=
dditional FIFO blocks:<br><br>FIFO_0<br>FIFO_1<br><br><br><br><br><br>Rando=
m performance tuning notes:<br><br>* Ensure your CPU governor is set to per=
formance:<br><br>sudo apt install cpufrequtils<br><br>To set performance fo=
r all cores:<br><br>for ((i=3D0;i&lt;$(nproc);i++)); do sudo cpufreq-set -c=
 $i -r -g performance; done<br><br><br>Verify with:<br><br>cpufreq-info<br>=
<br>* Set your network buffers<br><br>sudo sysctl -w net.core.rmem_max=3D62=
5000000<br>sudo sysctl -w net.core.wmem_max=3D625000000<br><br>* Set the MT=
U to 8000 on your 10Gb NICs<br><br>* Ensure you have pthreads enabled for y=
our user<br><a href=3D"https://kb.ettus.com/Building_and_Installing_the_USR=
P_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_schedu=
ling" target=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_US=
RP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_sched=
uling</a><br><br><a href=3D"http://files.ettus.com/manual/page_general.html=
#general_threading" target=3D"_blank">http://files.ettus.com/manual/page_ge=
neral.html#general_threading</a><br><br><br>* Disable hyper threading in bi=
os. This will typically give about a 10% boost in core performance if you c=
an work without the additional cores. You'll need to update your cpu core l=
ist in DPDK.<br><br>* Disable KPTI for spectra/meltdown. I would recommend =
to try disabling the KPTI protections for your CPU if the machine is offlin=
e, you may see a 10-15% performance increase.<br><br>This can be done by ad=
ding the lines below to your /etc/default/grub at GRUB_CMDLINE_LINUX_DEFAUL=
T=3D&quot;&quot;, then running sudo update-grub and rebooting.<br><br>pti=
=3Doff spectre_v2=3Doff l1tf=3Doff nospec_store_bypass_disable no_stf_barri=
er<br><br>Note, this disables protections against Meltdown/Spectra (links b=
elow). So if you try to do this, I would recommend disconnecting that host =
from any internet connected network.<br><br><a href=3D"https://en.wikipedia=
.org/wiki/Meltdown_(security_vulnerability)" target=3D"_blank">https://en.w=
ikipedia.org/wiki/Meltdown_(security_vulnerability)</a><br><a href=3D"https=
://en.wikipedia.org/wiki/Spectre_(security_vulnerability)" target=3D"_blank=
">https://en.wikipedia.org/wiki/Spectre_(security_vulnerability)</a><br><br=
>* There are additional recommendations here from Intel on various adjustme=
nts you can do to improve performance with DPDK:<br><a href=3D"http://doc.d=
pdk.org/guides/linux_gsg/nic_perf_intel_platform.html" target=3D"_blank">ht=
tp://doc.dpdk.org/guides/linux_gsg/nic_perf_intel_platform.html</a><br><br>=
Specifically I would recommend to try section 10.1.3 #3 where you isolate t=
he CPU cores that are used for DPDK.<br><br>* Here is a performance report =
from Intel on DPDK 17.11: <a href=3D"https://fast.dpdk.org/doc/perf/DPDK_17=
_11_Intel_NIC_performance_report.pdf" target=3D"_blank">https://fast.dpdk.o=
rg/doc/perf/DPDK_17_11_Intel_NIC_performance_report.pdf</a><br><br>In the t=
ables of boot and bio's settings the additional CPU options of nohz_full=3D=
&quot;&quot; and rcu_nocbs=3D&quot;&quot; are added to their kernel configs=
, this may help as well.<br><br>Additionally they made the changes listed b=
elow:<br><br>CPU Power and Performance Policy &lt;Performance&gt; (you shou=
ld already be doing this)<br>CPU C-state Disabled<br>CPU P-state Disabled<b=
r>Enhanced Intel=C2=AE Speedstep=C2=AE Tech Disabled<br>Turbo Boost Disable=
d<br><br><br><br><br>Regards,<br>Nate Temple<o:p></o:p></span></p></div></d=
iv><p class=3DMsoNormal style=3D'margin-left:4.8pt'><o:p>&nbsp;</o:p></p><d=
iv><div><p class=3DMsoNormal style=3D'margin-left:4.8pt'>On Wed, Dec 11, 20=
19 at 9:18 AM Thomas Harder &lt;<a href=3D"mailto:Thomas.Harder@oca.eu" tar=
get=3D"_blank">Thomas.Harder@oca.eu</a>&gt; wrote:</p></div><blockquote sty=
le=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt=
;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'><=
div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto;margin-left:9.6pt'>Rob,</p><p class=3DMsoNormal style=3D'mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:9.6pt'>I am def=
initely interested in your costum =E2=80=98txarb=E2=80=99 RFNoC block. For =
now I am using tx waveforms of about 10.000 samples, so the 2^15 samples wo=
uld be sufficient.</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;mso-margin-bottom-alt:auto;margin-left:9.6pt'>I was already searching what=
 exactly this SRAM image means. Because today I was able to setup DPDK with=
 UHD <span style=3D'font-family:"Arial",sans-serif'>3.14.1</span> and the b=
enchmark_rate code(excactly described as in the mail of Nate) was still ful=
l of underruns with the stock XG fpga image which I downloaded with uhd_ima=
ges_downloader. So I will also try to build a second FIFO block, since I ha=
ve still for two weeks the test version of Vivado.</p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:9.6=
pt'>Thomas</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto;margin-left:9.6pt'>&nbsp;</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:9.6pt'>&=
nbsp;</p><div style=3D'border:none;border-top:solid windowtext 1.0pt;paddin=
g:3.0pt 0in 0in 0in;border-color:currentcolor currentcolor'><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-le=
ft:9.6pt'><b>From: </b><a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>Rob Kossler</a><br><b>Sent: </b>Wednesday, December 11, 2019 4:50 PM<br><b=
>To: </b><a href=3D"mailto:Thomas.Harder@oca.eu" target=3D"_blank">Thomas H=
arder</a>; <a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">Nate =
Temple</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two channels=
 with replay block</p></div><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto;margin-left:9.6pt'>&nbsp;</p><div><div><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;margin-left:9.6pt'>Thomas,</p></div><div><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:9.6pt'>I bel=
ieve that Nate and I were saying basically the same thing.&nbsp; When he re=
ferred to an SRAM image, I believe that this means an image with the FIFO b=
locks.&nbsp; I believe that such an image needs to be built by the user (ra=
ther than downloaded using uhd_images_downloader), but I'm not 100% certain=
.</p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto;margin-left:9.6pt'>&nbsp;</p></div><div><p class=3DMs=
oNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-=
left:9.6pt'>If you are interested, I have a custom 'txarb' RFNoC block that=
 implements my 2nd option below.&nbsp; By default, it includes storage of u=
p to 2^15 samples, but this can be modified using an input parameter (FPGA =
resources permitting). This block requires some specialized behavior, but i=
t is pretty simple.&nbsp; Similar to the Replay block, you need to construc=
t a custom RFNoC graph that connects the txarb block to the Radio.&nbsp; Wh=
en you want to stream, you need to stream just one full waveform to the txa=
rb&nbsp;block.&nbsp; Once the txarb&nbsp;block receives end-of-burst, it wi=
ll automatically stop &quot;recording the samples to memory&quot; and begin=
 &quot;playing the samples from memory repeatedly&quot;.&nbsp; The streamin=
g will continue indefinitely until you send a new tx waveform.&nbsp; If the=
 new tx waveform contains less than 2 samples, the streaming is turned off.=
&nbsp; There are no control registers to worry about. Timed behavior is sup=
ported because the block preserves the command time of the incoming stream =
from the host when it starts playing out.</p></div><div><p class=3DMsoNorma=
l style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:9=
.6pt'>&nbsp;</p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt=
:auto;mso-margin-bottom-alt:auto;margin-left:9.6pt'>It is not terribly diff=
icult to build this custom block, but if you haven't built out-of-tree RFNO=
C blocks before, it might be easiest to just put this block in-tree (in the=
 Ettus folder structure) and manually modify makefiles as needed. Let me kn=
ow if you are interested.</p></div><div><p class=3DMsoNormal style=3D'mso-m=
argin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:9.6pt'>Rob</p></d=
iv><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto;margin-left:9.6pt'>&nbsp;</p></div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:9.6pt'>&=
nbsp;</p><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto;margin-left:9.6pt'>On Wed, Dec 11, 2019 at 10:07 A=
M Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank=
">nate.temple@ettus.com</a>&gt; wrote:</p></div><blockquote style=3D'border=
:none;border-left:solid windowtext 1.0pt;padding:0in 0in 0in 6.0pt;margin-l=
eft:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'><div><div>=
<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;margin-left:19.2pt'><span style=3D'font-family:"Arial",sans-serif'>Hi=
 Thomas,<br><br>One option instead of using the Replay block could be to st=
ream 2x 200e6 from your host. <br><br>On the X310, this requires using a SR=
AM image and DPDK. DPDK support was added with UHD 3.14.1.0 for the X310, I=
'd suggest to use 3.14.1.1 at this time though.<br><br>Some links on DPDK:<=
br><br><a href=3D"https://www.dpdk.org/" target=3D"_blank">https://www.dpdk=
.org/</a><br><a href=3D"http://files.ettus.com/manual/page_dpdk.html" targe=
t=3D"_blank">http://files.ettus.com/manual/page_dpdk.html</a><br><br>I've b=
een able to run 2x2 @ 200e6 with the X310 with DPDK using a 4 GHz CPU.<br><=
br>./benchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_rate 200e6 --tx_=
channels 0,1 --args &quot;addr=3D192.168.10.2,second_addr=3D192.168.20.2,us=
e_dpdk=3D1,num_recv_frames=3D512,enable_tx_dual_eth=3D1,skip_ddc=3D1,skip_d=
uc=3D1&quot;<br><br>num_recv_frames=3D512 can help if you're seeing overflo=
ws.<br><br>enable_tx_dual_eth=3D1 is required for 2x TX @ 200e6<br><br>skip=
_ddc=3D1,skip_duc=3D1 can help as well since you'd be sending at full rate.=
<br><br><br><br>Regards,<br>Nate Temple</span></p></div></div><p class=3DMs=
oNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-=
left:19.2pt'>&nbsp;</p><div><div><p class=3DMsoNormal style=3D'mso-margin-t=
op-alt:auto;mso-margin-bottom-alt:auto;margin-left:19.2pt'>On Wed, Dec 11, =
2019 at 7:03 AM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrot=
e:</p></div><blockquote style=3D'border:none;border-left:solid windowtext 1=
.0pt;padding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-ri=
ght:0in;margin-bottom:5.0pt'><div><div><p class=3DMsoNormal style=3D'mso-ma=
rgin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.4in'>I do not thi=
nk it is possible using the stock FPGA image.&nbsp; However, I can think of=
 a couple of possibilities</p></div><div><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.9in'><span styl=
e=3D'font-size:10.0pt;font-family:Symbol'>=C2=B7</span><span style=3D'font-=
size:7.0pt;font-family:"Times New Roman",serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; </span>On the N310, Ettus includes 4 FIFO blocks (rather than the=
 DmaFIFO which used the off-FPGA RAM for memory), to provide capability for=
 4x125 MS/s streaming. Perhaps if you built an X310 FPGA image with 2 such =
FIFO blocks, you could use these rather than the DmaFIFO and achieve the de=
sired streaming.&nbsp; Note that this requires a Vivado license to build yo=
ur own FPGA image, but does not require FPGA experience because you would b=
e building an image with &quot;stock&quot; blocks.&nbsp; One caution though=
 is that streaming at this very high rate still requires a high performance=
 host and so it is still possible that you would have underruns if your hos=
t could not keep up.&nbsp; If you go this route, I believe you will likely =
need to use the &quot;DPDK&quot; capability which is a bit of a pain to con=
figure and get it working properly.</p><p class=3DMsoNormal style=3D'mso-ma=
rgin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.9in'><span style=
=3D'font-size:10.0pt;font-family:Symbol'>=C2=B7</span><span style=3D'font-s=
ize:7.0pt;font-family:"Times New Roman",serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; </span>Another possibility is to create a custom RFNoC block that =
is similar to the replay block but that uses FPGA memory to store a fixed d=
uration waveform and then plays it out cyclically like the replay block. Th=
e Ettus 'window' RFNoC block provides a good example of how to store coeffi=
cients and play them out repeatedly.&nbsp; But, making the needed modificat=
ions is not a trivial task except for someone who is pretty good at FPGA pr=
ogramming.</p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto;margin-left:.4in'>Given that you were trying the r=
eplay block, I'm guessing that your Tx waveforms are of fixed duration.&nbs=
p; What is the duration (in number of samples) that you require?</p></div><=
div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto;margin-left:.4in'>Rob</p></div></div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.4in'>&n=
bsp;</p><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto;margin-left:.4in'>On Wed, Dec 11, 2019 at 5:05 AM T=
homas Harder &lt;<a href=3D"mailto:Thomas.Harder@oca.eu" target=3D"_blank">=
Thomas.Harder@oca.eu</a>&gt; wrote:</p></div><blockquote style=3D'border:no=
ne;border-left:solid windowtext 1.0pt;padding:0in 0in 0in 6.0pt;margin-left=
:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'><div><div><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to;margin-left:38.4pt'>Thank you Rob for this comment.</p><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left=
:38.4pt'>But I am not sure if I understand you correctly. Do you want to sa=
y, that it is <b>IMPOSSIBLE</b> to stream TX two different waveforms synchr=
onized &nbsp;on the 2 channels of the x310 with the full bandwidth of 200MS=
/s on each channel?</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:aut=
o;mso-margin-bottom-alt:auto;margin-left:38.4pt'>That is what I am trying t=
he last 6 months full time, starting with Labview under windows and then UH=
D under Linux with a Dell Precision 5820 desktop (16GB RAM, Intel Xeon W-21=
25 CPU@ 4.GHz x8) with MXI connection, dual 10Gbit connection(Intel X520-DA=
2), the replay block recently: always the same result: continuous underruns=
.</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto;margin-left:38.4pt'>If you can confirm that this is not possible=
 without an important FPGA change (because I have no experience in this fie=
ld and I have not the time to invest into it), I must search for another so=
lution to create two different synchronized RF waveforms with 160MHz bandwi=
dth (optical, electronical,=E2=80=A6) because this will be just a part of m=
y experimental setup but it is crucial to go on .</p><p class=3DMsoNormal s=
tyle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:38.4=
pt'>I am thankful for any advise,</p><p class=3DMsoNormal style=3D'mso-marg=
in-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:38.4pt'>Thomas</p><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;margin-left:38.4pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto;margin-left:38.4pt'>&nbsp;</p><div =
style=3D'border:none;border-top:solid windowtext 1.0pt;padding:3.0pt 0in 0i=
n 0in;border-color:currentcolor'><p class=3DMsoNormal style=3D'mso-margin-t=
op-alt:auto;mso-margin-bottom-alt:auto;margin-left:38.4pt'><b>From: </b><a =
href=3D"mailto:rkossler@nd.edu" target=3D"_blank">Rob Kossler</a><br><b>Sen=
t: </b>Tuesday, December 10, 2019 5:01 AM<br><b>To: </b><a href=3D"mailto:T=
homas.Harder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Cc: </b><a h=
ref=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter</a>; <a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two chan=
nels with replay block</p></div><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto;margin-left:38.4pt'>&nbsp;</p><div><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;margin-left:38.4pt'>Apart from solving the underrun issue, there is als=
o an issue with synchronization.&nbsp; The replay block doesn't presently s=
upport timed commands.</p><div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto;margin-left:38.4pt'>&nbsp;</p></div><d=
iv><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;margin-left:38.4pt'>And, as a side note, the issue with streaming =
from the host is not just the host.&nbsp; The DMA FIFO has a maximum bandwi=
dth of something like 600 MS/s (combination of all inputs and outputs) that=
 precludes streaming 400 MS/s in and out of the block simultaneously.&nbsp;=
 So, even if the host could keep up, the FIFO could not.</p></div><div><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o;margin-left:38.4pt'>Rob</p></div></div><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:38.4pt'>&nbsp;</=
p><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto;margin-left:38.4pt'>On Mon, Dec 9, 2019 at 4:34 AM Thomas=
 Harder via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</p></div><blockqu=
ote style=3D'border:none;border-left:solid windowtext 1.0pt;padding:0in 0in=
 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-botto=
m:5.0pt'><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto;margin-left:48.0pt'>Hi Sam,</p><p class=3DMsoNorma=
l style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
8.0pt'>Thank you for your reply.</p><p class=3DMsoNormal style=3D'mso-margi=
n-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>This morning =
I set the MCR to 184.32 and I am still having continuous underruns using al=
so </p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto;margin-left:48.0pt'><span style=3D'font-size:9.0pt;font-family=
:Consolas;color:#24292E'>replay_ctrl-&gt;</span><span style=3D'font-size:9.=
0pt;font-family:Consolas;color:#005CC5'>get_record_fullness</span></p><p cl=
ass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
;margin-left:48.0pt'>for both channels.</p><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>&nbsp;=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto;margin-left:48.0pt'>But since I need the full bandwidth of 160MHz=
 I would like implement a second replay block in my fpga image.</p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;ma=
rgin-left:48.0pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>Could anyone help me =
with this? </p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;margin-left:48.0pt'>I am really new in fpga programmin=
g and for the image with one replay block I was just following the instruct=
ions in <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" targe=
t=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a>.</p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o;margin-left:48.0pt'>Thank you,</p><p class=3DMsoNormal style=3D'mso-margi=
n-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>Thomas</p><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to;margin-left:48.0pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-t=
op-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>&nbsp;</p><div s=
tyle=3D'border:none;border-top:solid windowtext 1.0pt;padding:3.0pt 0in 0in=
 0in;border-color:currentcolor'><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'><b>From: </b><a h=
ref=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter</a><br><b>=
Sent: </b>Friday, December 6, 2019 10:23 PM<br><b>To: </b><a href=3D"mailto=
:Thomas.Harder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Cc: </b><a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two c=
hannels with replay block</p></div><p class=3DMsoNormal style=3D'mso-margin=
-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>&nbsp;</p><div=
><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto;margin-left:48.0pt'>Thomas,</p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.=
0pt'>&nbsp;</p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>Upon further investigat=
ion, we may be running up to a practical limit of a single CHDR interface r=
ather than an issue with your code. A single replay block servicing two rad=
ios will have a max (theoretical) rate of 187.5 MSPS on either channel. Thi=
s means that you might be able to squeeze full rate out on 2 channels with =
an MCR of 184.32, but that's cutting it pretty close. Sounds like 2 channel=
s at 200 MSPS with a replay setup will require 2 replay blocks serving each=
 channel independently. If you end up trying either of the above out, I'd b=
e curious to know what results you observe.</p></div><div><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left=
:48.0pt'>&nbsp;</p></div><div><div><div><div><div><div><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:48=
.0pt'>Sam Reiter </p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>Ettus Research</p></div=
></div></div></div></div></div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'>&nbsp;</p></div></=
div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto;margin-left:48.0pt'>&nbsp;</p><div><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:48.0pt'=
>On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter=
@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:</p></div>=
<blockquote style=3D'border:none;border-left:solid windowtext 1.0pt;padding=
:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;marg=
in-bottom:5.0pt'><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;mso-margin-bottom-alt:auto;margin-left:.8in'>Thomas,</p><div><p class=3DMs=
oNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-=
left:.8in'>&nbsp;</p></div><div><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto;margin-left:.8in'>I'd need to set it =
up on my end, but I believe you can TX two distinct waveforms from a single=
 replay block instance. You'd need to make sure that your adding your data =
to the buffer in separate locations and at an address that is a multiple of=
 8 bytes (which it looks like you're doing from the above snippets). Are yo=
u seeing continuous underruns, or just a handful at the beginning on the ru=
n? Does your duplicated code also use:</p></div><div><p class=3DMsoNormal s=
tyle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.8in=
'>&nbsp;</p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:aut=
o;mso-margin-bottom-alt:auto;margin-left:.8in'><span style=3D'font-size:9.0=
pt;font-family:Consolas;color:#24292E'>replay_ctrl-&gt;</span><span style=
=3D'font-size:9.0pt;font-family:Consolas;color:#005CC5'>get_record_fullness=
</span></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;mso-margin-bottom-alt:auto;margin-left:.8in'>&nbsp;</p></div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;ma=
rgin-left:.8in'>on both channels before kicking off the stream start?</p></=
div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto;margin-left:.8in'>&nbsp;</p></div><div><div><div><div><div><=
div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto;margin-left:.8in'>Sam Reiter&nbsp;</p><div><p class=3DMsoNormal s=
tyle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.8in=
'>Ettus Research</p></div></div></div></div></div></div></div></div><p clas=
s=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;m=
argin-left:.8in'>&nbsp;</p><div><div><p class=3DMsoNormal style=3D'mso-marg=
in-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.8in'>On Wed, Dec 4,=
 2019 at 3:48 AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:</p></div><blockquote style=3D'border:none;border-left:solid windowtex=
t 1.0pt;padding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin=
-right:0in;margin-bottom:5.0pt'><div><div><p class=3DMsoNormal style=3D'mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>Hello e=
veryone,</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto;margin-left:67.2pt'>Is it possible to transmit two differ=
ent waveforms on the two channels of the USRP X310 with the two UBX-160 dau=
ghterboards?</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto;margin-left:67.2pt'>I want to transmit two different =
waveforms simultaneous (synchronized ) on the two channels of the USRP with=
 the full sample rate of 200 MS/s. I tried already to do it with a dual 10G=
bit-ethernet connection and I seemed to be limited by my computer. Now I am=
 trying to do it with the replay block.</p><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbsp;=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto;margin-left:67.2pt'>I built the FPGA image with one Replay block =
as described in <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Bloc=
k" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a> =
to run the example =E2=80=9Creplay_samples_from_file=E2=80=9D and it is wor=
king fine if I transmit just on one channel. Now I was modifying the code b=
y connecting the replay block to both channels:</p><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt=
'>replay_graph-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan,tx_bl=
ockid,tx_chan,replay_spp);</p><p class=3DMsoNormal style=3D'mso-margin-top-=
alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>replay_graph-&gt;co=
nnect(replay_ctrl-&gt;get_block_id(),replay_chan1,tx_blockid1,tx_chan,repla=
y_spp);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto;margin-left:67.2pt'>&nbsp;</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>=
and writing the same waveform into another region of the DRAM-buffer:</p><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;margin-left:67.2pt'>replay_ctrl-&gt;config_record(0,words_to_replay*rep=
lay_word_size, replay_chan);</p><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>replay_ctrl-&gt;c=
onfig_record(20000,words_to_replay*replay_word_size, replay_chan1);</p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o;margin-left:67.2pt'>and</p><p class=3DMsoNormal style=3D'mso-margin-top-a=
lt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>replay_ctrl-&gt;conf=
ig_play(0,words_to_replay*replay_word_size, replay_chan);</p><p class=3DMso=
Normal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-l=
eft:67.2pt'>replay_ctrl-&gt;config_play(20000,words_to_replay*replay_word_s=
ize, replay_chan1);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:aut=
o;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbsp;</p><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-lef=
t:67.2pt'>where </p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto;margin-left:67.2pt'>words_to_replay*replay_word_s=
ize=3D16000</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;margin-left:67.2pt'>replay_chan=3D0</p><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-le=
ft:67.2pt'>replay_chan1=3D1</p><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>tx_blockid=3D0/Rad=
io_0</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto;margin-left:67.2pt'>tx_blockid=3D0/Radio_1</p><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-le=
ft:67.2pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;=
mso-margin-bottom-alt:auto;margin-left:67.2pt'>then I stream my waveforms t=
o the replay block as defined in the example and I start to replay the data=
:</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto;margin-left:67.2pt'>replay_ctrl-&gt;issue_stream_cmd(stream_cmd,=
 replay_chan);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto;margin-left:67.2pt'>replay_ctrl-&gt;issue_stream_cm=
d(stream_cmd, replay_chan1);</p><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbsp;</p><p clas=
s=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;m=
argin-left:67.2pt'>It works but with plenty of Underflows!!</p><p class=3DM=
soNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin=
-left:67.2pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:au=
to;mso-margin-bottom-alt:auto;margin-left:67.2pt'>So what does it mean when=
 it says in the manual:</p><p class=3DMsoNormal style=3D'mso-margin-top-alt=
:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>=E2=80=9CNote that the=
 record and playback buffers do not need to the same, allowing a single Rep=
lay block to both record and playback to different regions of memory<b> sim=
ultaneously</b>.=E2=80=9D</p><p class=3DMsoNormal style=3D'mso-margin-top-a=
lt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>(<a href=3D"https://=
kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.ett=
us.com/Using_the_RFNoC_Replay_Block</a>)?</p><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbs=
p;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto;margin-left:67.2pt'>Because in the manual it says also:</p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o;margin-left:67.2pt'>=E2=80=9CThe replay block has the following features:=
 One input and <b>one</b> output=E2=80=9D</p><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>(<a =
href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__=
ctrl.html" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1rfn=
oc_1_1replay__block__ctrl.html</a>)</p><p class=3DMsoNormal style=3D'mso-ma=
rgin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbsp;</p>=
<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;margin-left:67.2pt'>So if the replay block has just one output why do=
es it have two channels connected to it (replay_chan=3D 0 and 1)?</p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;=
margin-left:67.2pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-=
alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>If one replay block=
 can just stream to one channel at the same time, can I implement easily a =
second replay block in the FPGA to stream on the two channels of my USRP tw=
o different waveforms simultaneously?</p><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbsp;</=
p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:67.2pt'>Thank you,</p><p class=3DMsoNormal style=3D'mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>Thomas<=
/p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;margin-left:67.2pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-ma=
rgin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbsp;</p>=
<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;margin-left:67.2pt'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margi=
n-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:67.2pt'>&nbsp;</p><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to;margin-left:67.2pt'>&nbsp;</p></div></div></blockquote></div></blockquot=
e></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto;margin-left:.8in'>___________________________________________=
____<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_bl=
ank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto;margin-left:48.0pt'>&nbsp;</p></div></div></blockquote></div><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o;margin-left:.6in'>_______________________________________________<br>USRP=
-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;ma=
rgin-left:38.4pt'>&nbsp;</p></div></div></blockquote></div></div></blockquo=
te></div></blockquote></div></div><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto;margin-left:19.2pt'>_______________=
________________________________<br>USRP-users mailing list<br><a href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com</a></p></div></div></blockquote></div></blockquote=
></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto;margin-left:9.6pt'>&nbsp;</p><p class=3DMsoNormal><o:p>&nbsp;<=
/o:p></p></div></body></html>=

--_A4899227-3251-4501-AD29-5ABBBE5575CF_--



--===============1505010732324746743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1505010732324746743==--


