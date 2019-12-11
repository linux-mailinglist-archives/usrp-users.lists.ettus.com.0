Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A8C11BAE9
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 19:01:09 +0100 (CET)
Received: from [::1] (port=51650 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1if6IN-0002fB-LA; Wed, 11 Dec 2019 13:01:07 -0500
Received: from mail-oi1-f182.google.com ([209.85.167.182]:38870)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1if6IJ-0002Zy-Eu
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 13:01:03 -0500
Received: by mail-oi1-f182.google.com with SMTP id b8so14054682oiy.5
 for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2019 10:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nS8kDHcjVbdDw8kNm59O+Z5OriqRA2pLMEvXQROEUAo=;
 b=nHa2dWSLgVR/Z9MQTpRl6TwxuR8kTD2PfBy0rR2ORWNZu8pVA7oqTxzjzPs3h30z6S
 z1aZHrVf5YWMfWUmNfHv74Rf2+PdsWDOW03KkRCMsEij3BDwvu5TRjVQWWriSHwFDGr8
 nN/sX4pLs9WdiVldB6+8s+jB4H9DsVfKXCAnpXAedtLBzzb95asJCXdiXbbJc3rnOPST
 R9V6Wq9LiNu+nFnNix1T4KhWR4pjGn3yQ/Q6hrYoe4Ap8gSZSg9GA+lO3CFw6MFUOVkD
 RFe9BWOTAhY+aVVVLn+jFB1rI3Kiv5p4bHDj+2L8ycx1CQwcuzx9Ny/FSfWxkVBYoQ2M
 G9PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nS8kDHcjVbdDw8kNm59O+Z5OriqRA2pLMEvXQROEUAo=;
 b=JOvUHuRzCVKcwPEqUbXS1nKzAjUyoQJZtJzkflym7anwyJx3dzYAybSrQwM2fuPt90
 CecDiK9eg1zcFxHcYlrvW4CqXlmBSPLZx09a7x12TssCV3FBwqAxIBYOPO2Yk/05Ezku
 239nNe19+v/rtqZIq0JClFvZhON4abT7+vFZp2prwynoCq0ICZP6jWdIDJyPLLC4pWQT
 G80g5X9qFaNRjsqUaTPRNkJ2QxHxzKzJ1sB0ijQjovrTngtqYMXwu7/fb+q0obMOWJHD
 dH7h3bYJ9wg2jRw/u2It/fPp0sUn4JTuJZ/C4PehII6ll8U2XqBjkGdxVJ8nxCjZqDPF
 5sIg==
X-Gm-Message-State: APjAAAU7etwN7+PhKSOyD8tH97BbL1N6jCfSoqR9OjjeXXH4q9hDPY3A
 cWij1bByWoGUePfYwvjYjnesrMZIoI1jvjaj0EzKGu4x
X-Google-Smtp-Source: APXvYqzRMH0eXuAEWCcfmYmWTyyxpOtkNg4tJQTqx4fmKUo5AORYFbxtgp5rGFZ1qqIAVM6cz8kKSv1KSWGKqypA75U=
X-Received: by 2002:aca:5117:: with SMTP id f23mr3669444oib.50.1576087222476; 
 Wed, 11 Dec 2019 10:00:22 -0800 (PST)
MIME-Version: 1.0
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
In-Reply-To: <CAL263izruTY5uFr9KRWHuAJ18t0U0ugB8GKPFpX+GjZ=nRjywg@mail.gmail.com>
Date: Wed, 11 Dec 2019 10:01:15 -0800
Message-ID: <CAL263iy3R7U0bk7hp3_JEDLCSD1JUBh-Oc2Jt4OndeU0mpM-Tw@mail.gmail.com>
To: Thomas Harder <Thomas.Harder@oca.eu>
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7106953028212128439=="
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

--===============7106953028212128439==
Content-Type: multipart/alternative; boundary="00000000000007f8a80599716769"

--00000000000007f8a80599716769
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 11, 2019 at 9:33 AM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Thomas,
>
> You will need to apply these changes below to the
> fpga-src/usrp3/top/x300/rfnoc_ce_default_inst_x310.v file. This will add
> additional SRAM FIFOs, which is basically what the "XGS" / SRAM image is.
> Make sure to start with the v3.14.1.1 fpga sources. (run git submodule
> init; git submodule update; in your UHD repo after checking out v3.14.1.1=
).
>
> ########################################################################
>
> diff --git a/usrp3/top/x300/rfnoc_ce_default_inst_x310.v
> b/usrp3/top/x300/rfnoc_ce_default_inst_x310.v
> index d20a64962..bcb4c3c32 100644
> --- a/usrp3/top/x300/rfnoc_ce_default_inst_x310.v
> +++ b/usrp3/top/x300/rfnoc_ce_default_inst_x310.v
> @@ -1,4 +1,4 @@
> -  localparam NUM_CE =3D 4;  // Must be no more than 10 (6 ports taken by
> transport and IO connected CEs)
> +  localparam NUM_CE =3D 6;  // Must be no more than 10 (6 ports taken by
> transport and IO connected CEs)
>
>   wire [NUM_CE*64-1:0] ce_flat_o_tdata, ce_flat_i_tdata;
>   wire [63:0]          ce_o_tdata[0:NUM_CE-1], ce_i_tdata[0:NUM_CE-1];
> @@ -46,7 +46,9 @@
>   genvar n;
>   generate
>     for (n =3D 4; n < NUM_CE; n =3D n + 1) begin
> -      noc_block_axi_fifo_loopback inst_noc_block_axi_fifo_loopback (
> +      noc_block_axi_fifo_loopback #(
> +        .STR_SINK_FIFOSIZE(15)
> +      ) inst_noc_block_axi_fifo_loopback (
>         .bus_clk(bus_clk), .bus_rst(bus_rst),
>         .ce_clk(ce_clk), .ce_rst(ce_rst),
>         .i_tdata(ce_o_tdata[n]), .i_tlast(ce_o_tlast[n]),
> .i_tvalid(ce_o_tvalid[n]), .i_tready(ce_o_tready[n]),
>
> ########################################################################
>
>
> After making these modifications to the FPGA sources, you can build a FPG=
A
> image with the commands:
>
> cd fpga-src/usrp3/top/x300/
> source setupenv.sh
> make X310_XG
>
> Note: Even though you are calling X310_XG, it is really a "XGS" image
> since it has the additional SRAM fifos.
>
> After that has completed building, you should write that FPGA image to th=
e
> X310 using uhd_image_loader.
>
> uhd_image_lodaer --args "addr=3D192.168.40.2,type=3Dx300" --fpga-path
> /path/to/x300.bit
>
> After the FPGA image load and restarting the USRP, run uhd_usrp_probe and
> at the end of the output where the RFNoC blocks are listed, you should se=
e
> two additional FIFO blocks:
>
> FIFO_0
> FIFO_1
>
>
>
>
>
> Random performance tuning notes:
>
> * Ensure your CPU governor is set to performance:
>
> sudo apt install cpufrequtils
>
> To set performance for all cores:
>
> for ((i=3D0;i<$(nproc);i++)); do sudo cpufreq-set -c $i -r -g performance=
;
> done
>
>
> Verify with:
>
> cpufreq-info
>
> * Set your network buffers
>
> sudo sysctl -w net.core.rmem_max=3D625000000
> sudo sysctl -w net.core.wmem_max=3D625000000
>
> * Set the MTU to 8000 on your 10Gb NICs
>
> * Ensure you have pthreads enabled for your user
>
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>
> http://files.ettus.com/manual/page_general.html#general_threading
>
>
> * Disable hyper threading in bios. This will typically give about a 10%
> boost in core performance if you can work without the additional cores.
> You'll need to update your cpu core list in DPDK.
>
> * Disable KPTI for spectra/meltdown. I would recommend to try disabling
> the KPTI protections for your CPU if the machine is offline, you may see =
a
> 10-15% performance increase.
>
> This can be done by adding the lines below to your /etc/default/grub at
> GRUB_CMDLINE_LINUX_DEFAULT=3D"", then running sudo update-grub and reboot=
ing.
>
> pti=3Doff spectre_v2=3Doff l1tf=3Doff nospec_store_bypass_disable no_stf_=
barrier
>
> Note, this disables protections against Meltdown/Spectra (links below). S=
o
> if you try to do this, I would recommend disconnecting that host from any
> internet connected network.
>
> https://en.wikipedia.org/wiki/Meltdown_(security_vulnerability)
> https://en.wikipedia.org/wiki/Spectre_(security_vulnerability)
>
> * There are additional recommendations here from Intel on various
> adjustments you can do to improve performance with DPDK:
> http://doc.dpdk.org/guides/linux_gsg/nic_perf_intel_platform.html
>
> Specifically I would recommend to try section 10.1.3 #3 where you isolate
> the CPU cores that are used for DPDK.
>
> * Here is a performance report from Intel on DPDK 17.11:
> https://fast.dpdk.org/doc/perf/DPDK_17_11_Intel_NIC_performance_report.pd=
f
>
> In the tables of boot and bio's settings the additional CPU options of
> nohz_full=3D"" and rcu_nocbs=3D"" are added to their kernel configs, this=
 may
> help as well.
>
> Additionally they made the changes listed below:
>
> CPU Power and Performance Policy <Performance> (you should already be
> doing this)
> CPU C-state Disabled
> CPU P-state Disabled
> Enhanced Intel=C2=AE Speedstep=C2=AE Tech Disabled
> Turbo Boost Disabled
>
>
>
>
> Regards,
> Nate Temple
>
> On Wed, Dec 11, 2019 at 9:18 AM Thomas Harder <Thomas.Harder@oca.eu>
> wrote:
>
>> Rob,
>>
>> I am definitely interested in your costum =E2=80=98txarb=E2=80=99 RFNoC =
block. For now I
>> am using tx waveforms of about 10.000 samples, so the 2^15 samples would=
 be
>> sufficient.
>>
>> I was already searching what exactly this SRAM image means. Because toda=
y
>> I was able to setup DPDK with UHD 3.14.1 and the benchmark_rate
>> code(excactly described as in the mail of Nate) was still full of underr=
uns
>> with the stock XG fpga image which I downloaded with uhd_images_download=
er.
>> So I will also try to build a second FIFO block, since I have still for =
two
>> weeks the test version of Vivado.
>>
>> Thomas
>>
>>
>>
>>
>>
>> *From: *Rob Kossler <rkossler@nd.edu>
>> *Sent: *Wednesday, December 11, 2019 4:50 PM
>> *To: *Thomas Harder <Thomas.Harder@oca.eu>; Nate Temple
>> <nate.temple@ettus.com>
>> *Subject: *Re: [USRP-users] transmitting on two channels with replay
>> block
>>
>>
>>
>> Thomas,
>>
>> I believe that Nate and I were saying basically the same thing.  When he
>> referred to an SRAM image, I believe that this means an image with the F=
IFO
>> blocks.  I believe that such an image needs to be built by the user (rat=
her
>> than downloaded using uhd_images_downloader), but I'm not 100% certain.
>>
>>
>>
>> If you are interested, I have a custom 'txarb' RFNoC block that
>> implements my 2nd option below.  By default, it includes storage of up t=
o
>> 2^15 samples, but this can be modified using an input parameter (FPGA
>> resources permitting). This block requires some specialized behavior, bu=
t
>> it is pretty simple.  Similar to the Replay block, you need to construct=
 a
>> custom RFNoC graph that connects the txarb block to the Radio.  When you
>> want to stream, you need to stream just one full waveform to the
>> txarb block.  Once the txarb block receives end-of-burst, it will
>> automatically stop "recording the samples to memory" and begin "playing =
the
>> samples from memory repeatedly".  The streaming will continue indefinite=
ly
>> until you send a new tx waveform.  If the new tx waveform contains less
>> than 2 samples, the streaming is turned off.  There are no control
>> registers to worry about. Timed behavior is supported because the block
>> preserves the command time of the incoming stream from the host when it
>> starts playing out.
>>
>>
>>
>> It is not terribly difficult to build this custom block, but if you
>> haven't built out-of-tree RFNOC blocks before, it might be easiest to ju=
st
>> put this block in-tree (in the Ettus folder structure) and manually modi=
fy
>> makefiles as needed. Let me know if you are interested.
>>
>> Rob
>>
>>
>>
>>
>>
>> On Wed, Dec 11, 2019 at 10:07 AM Nate Temple <nate.temple@ettus.com>
>> wrote:
>>
>> Hi Thomas,
>>
>> One option instead of using the Replay block could be to stream 2x 200e6
>> from your host.
>>
>> On the X310, this requires using a SRAM image and DPDK. DPDK support was
>> added with UHD 3.14.1.0 for the X310, I'd suggest to use 3.14.1.1 at thi=
s
>> time though.
>>
>> Some links on DPDK:
>>
>> https://www.dpdk.org/
>> http://files.ettus.com/manual/page_dpdk.html
>>
>> I've been able to run 2x2 @ 200e6 with the X310 with DPDK using a 4 GHz
>> CPU.
>>
>> ./benchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_rate 200e6
>> --tx_channels 0,1 --args
>> "addr=3D192.168.10.2,second_addr=3D192.168.20.2,use_dpdk=3D1,num_recv_fr=
ames=3D512,enable_tx_dual_eth=3D1,skip_ddc=3D1,skip_duc=3D1"
>>
>> num_recv_frames=3D512 can help if you're seeing overflows.
>>
>> enable_tx_dual_eth=3D1 is required for 2x TX @ 200e6
>>
>> skip_ddc=3D1,skip_duc=3D1 can help as well since you'd be sending at ful=
l
>> rate.
>>
>>
>>
>> Regards,
>> Nate Temple
>>
>>
>>
>> On Wed, Dec 11, 2019 at 7:03 AM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> I do not think it is possible using the stock FPGA image.  However, I ca=
n
>> think of a couple of possibilities
>>
>> =C2=B7       On the N310, Ettus includes 4 FIFO blocks (rather than the
>> DmaFIFO which used the off-FPGA RAM for memory), to provide capability f=
or
>> 4x125 MS/s streaming. Perhaps if you built an X310 FPGA image with 2 suc=
h
>> FIFO blocks, you could use these rather than the DmaFIFO and achieve the
>> desired streaming.  Note that this requires a Vivado license to build yo=
ur
>> own FPGA image, but does not require FPGA experience because you would b=
e
>> building an image with "stock" blocks.  One caution though is that
>> streaming at this very high rate still requires a high performance host =
and
>> so it is still possible that you would have underruns if your host could
>> not keep up.  If you go this route, I believe you will likely need to us=
e
>> the "DPDK" capability which is a bit of a pain to configure and get it
>> working properly.
>>
>> =C2=B7       Another possibility is to create a custom RFNoC block that =
is
>> similar to the replay block but that uses FPGA memory to store a fixed
>> duration waveform and then plays it out cyclically like the replay block=
.
>> The Ettus 'window' RFNoC block provides a good example of how to store
>> coefficients and play them out repeatedly.  But, making the needed
>> modifications is not a trivial task except for someone who is pretty goo=
d
>> at FPGA programming.
>>
>> Given that you were trying the replay block, I'm guessing that your Tx
>> waveforms are of fixed duration.  What is the duration (in number of
>> samples) that you require?
>>
>> Rob
>>
>>
>>
>> On Wed, Dec 11, 2019 at 5:05 AM Thomas Harder <Thomas.Harder@oca.eu>
>> wrote:
>>
>> Thank you Rob for this comment.
>>
>> But I am not sure if I understand you correctly. Do you want to say, tha=
t
>> it is *IMPOSSIBLE* to stream TX two different waveforms synchronized  on
>> the 2 channels of the x310 with the full bandwidth of 200MS/s on each
>> channel?
>>
>> That is what I am trying the last 6 months full time, starting with
>> Labview under windows and then UHD under Linux with a Dell Precision 582=
0
>> desktop (16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI connection,
>> dual 10Gbit connection(Intel X520-DA2), the replay block recently: alway=
s
>> the same result: continuous underruns.
>>
>> If you can confirm that this is not possible without an important FPGA
>> change (because I have no experience in this field and I have not the ti=
me
>> to invest into it), I must search for another solution to create two
>> different synchronized RF waveforms with 160MHz bandwidth (optical,
>> electronical,=E2=80=A6) because this will be just a part of my experimen=
tal setup
>> but it is crucial to go on .
>>
>> I am thankful for any advise,
>>
>> Thomas
>>
>>
>>
>>
>>
>> *From: *Rob Kossler <rkossler@nd.edu>
>> *Sent: *Tuesday, December 10, 2019 5:01 AM
>> *To: *Thomas Harder <Thomas.Harder@oca.eu>
>> *Cc: *Sam Reiter <sam.reiter@ettus.com>; usrp-users@lists.ettus.com
>> *Subject: *Re: [USRP-users] transmitting on two channels with replay
>> block
>>
>>
>>
>> Apart from solving the underrun issue, there is also an issue with
>> synchronization.  The replay block doesn't presently support timed comma=
nds.
>>
>>
>>
>> And, as a side note, the issue with streaming from the host is not just
>> the host.  The DMA FIFO has a maximum bandwidth of something like 600 MS=
/s
>> (combination of all inputs and outputs) that precludes streaming 400 MS/=
s
>> in and out of the block simultaneously.  So, even if the host could keep
>> up, the FIFO could not.
>>
>> Rob
>>
>>
>>
>> On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Hi Sam,
>>
>> Thank you for your reply.
>>
>> This morning I set the MCR to 184.32 and I am still having continuous
>> underruns using also
>>
>> replay_ctrl->get_record_fullness
>>
>> for both channels.
>>
>>
>>
>> But since I need the full bandwidth of 160MHz I would like implement a
>> second replay block in my fpga image.
>>
>>
>>
>> Could anyone help me with this?
>>
>> I am really new in fpga programming and for the image with one replay
>> block I was just following the instructions in
>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block.
>>
>> Thank you,
>>
>> Thomas
>>
>>
>>
>>
>>
>> *From: *Sam Reiter <sam.reiter@ettus.com>
>> *Sent: *Friday, December 6, 2019 10:23 PM
>> *To: *Thomas Harder <Thomas.Harder@oca.eu>
>> *Cc: *usrp-users@lists.ettus.com
>> *Subject: *Re: [USRP-users] transmitting on two channels with replay
>> block
>>
>>
>>
>> Thomas,
>>
>>
>>
>> Upon further investigation, we may be running up to a practical limit of
>> a single CHDR interface rather than an issue with your code. A single
>> replay block servicing two radios will have a max (theoretical) rate of
>> 187.5 MSPS on either channel. This means that you might be able to squee=
ze
>> full rate out on 2 channels with an MCR of 184.32, but that's cutting it
>> pretty close. Sounds like 2 channels at 200 MSPS with a replay setup wil=
l
>> require 2 replay blocks serving each channel independently. If you end u=
p
>> trying either of the above out, I'd be curious to know what results you
>> observe.
>>
>>
>>
>> Sam Reiter
>>
>> Ettus Research
>>
>>
>>
>>
>>
>> On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>>
>> Thomas,
>>
>>
>>
>> I'd need to set it up on my end, but I believe you can TX two distinct
>> waveforms from a single replay block instance. You'd need to make sure t=
hat
>> your adding your data to the buffer in separate locations and at an addr=
ess
>> that is a multiple of 8 bytes (which it looks like you're doing from the
>> above snippets). Are you seeing continuous underruns, or just a handful =
at
>> the beginning on the run? Does your duplicated code also use:
>>
>>
>>
>> replay_ctrl->get_record_fullness
>>
>>
>>
>> on both channels before kicking off the stream start?
>>
>>
>>
>> Sam Reiter
>>
>> Ettus Research
>>
>>
>>
>> On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Hello everyone,
>>
>> Is it possible to transmit two different waveforms on the two channels o=
f
>> the USRP X310 with the two UBX-160 daughterboards?
>>
>> I want to transmit two different waveforms simultaneous (synchronized )
>> on the two channels of the USRP with the full sample rate of 200 MS/s. I
>> tried already to do it with a dual 10Gbit-ethernet connection and I seem=
ed
>> to be limited by my computer. Now I am trying to do it with the replay
>> block.
>>
>>
>>
>> I built the FPGA image with one Replay block as described in
>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block to run the example
>> =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine if I t=
ransmit just on one
>> channel. Now I was modifying the code by connecting the replay block to
>> both channels:
>>
>>
>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blockid=
,tx_chan,replay_spp);
>>
>>
>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_blocki=
d1,tx_chan,replay_spp);
>>
>>
>>
>> and writing the same waveform into another region of the DRAM-buffer:
>>
>> replay_ctrl->config_record(0,words_to_replay*replay_word_size,
>> replay_chan);
>>
>> replay_ctrl->config_record(20000,words_to_replay*replay_word_size,
>> replay_chan1);
>>
>> and
>>
>> replay_ctrl->config_play(0,words_to_replay*replay_word_size, replay_chan=
);
>>
>> replay_ctrl->config_play(20000,words_to_replay*replay_word_size,
>> replay_chan1);
>>
>>
>>
>> where
>>
>> words_to_replay*replay_word_size=3D16000
>>
>> replay_chan=3D0
>>
>> replay_chan1=3D1
>>
>> tx_blockid=3D0/Radio_0
>>
>> tx_blockid=3D0/Radio_1
>>
>>
>>
>> then I stream my waveforms to the replay block as defined in the example
>> and I start to replay the data:
>>
>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
>>
>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);
>>
>>
>>
>> It works but with plenty of Underflows!!
>>
>>
>>
>> So what does it mean when it says in the manual:
>>
>> =E2=80=9CNote that the record and playback buffers do not need to the sa=
me,
>> allowing a single Replay block to both record and playback to different
>> regions of memory* simultaneously*.=E2=80=9D
>>
>> (https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?
>>
>>
>>
>> Because in the manual it says also:
>>
>> =E2=80=9CThe replay block has the following features: One input and *one=
* output=E2=80=9D
>>
>> (
>> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.=
html
>> )
>>
>>
>>
>> So if the replay block has just one output why does it have two channels
>> connected to it (replay_chan=3D 0 and 1)?
>>
>>
>>
>> If one replay block can just stream to one channel at the same time, can
>> I implement easily a second replay block in the FPGA to stream on the tw=
o
>> channels of my USRP two different waveforms simultaneously?
>>
>>
>>
>> Thank you,
>>
>> Thomas
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>

--00000000000007f8a80599716769
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019 at 9:33 AM Nate Temple &=
lt;<a href=3D"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,=
sans-serif">Hi Thomas,<br><br>You will need to apply these changes below to=
 the fpga-src/usrp3/top/x300/rfnoc_ce_default_inst_x310.v file. This will a=
dd additional SRAM FIFOs, which is basically what the &quot;XGS&quot; / SRA=
M image is. Make sure to start with the v3.14.1.1 fpga sources. (run git su=
bmodule init; git submodule update; in your UHD repo after checking out v3.=
14.1.1).<br><br>###########################################################=
#############<br><br>diff --git a/usrp3/top/x300/rfnoc_ce_default_inst_x310=
.v b/usrp3/top/x300/rfnoc_ce_default_inst_x310.v<br>index d20a64962..bcb4c3=
c32 100644<br>--- a/usrp3/top/x300/rfnoc_ce_default_inst_x310.v<br>+++ b/us=
rp3/top/x300/rfnoc_ce_default_inst_x310.v<br>@@ -1,4 +1,4 @@<br>- =C2=A0loc=
alparam NUM_CE =3D 4; =C2=A0// Must be no more than 10 (6 ports taken by tr=
ansport and IO connected CEs)<br>+ =C2=A0localparam NUM_CE =3D 6; =C2=A0// =
Must be no more than 10 (6 ports taken by transport and IO connected CEs)<b=
r><br>=C2=A0 wire [NUM_CE*64-1:0] ce_flat_o_tdata, ce_flat_i_tdata;<br>=C2=
=A0 wire [63:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ce_o_tdata[0:NUM_CE-1], c=
e_i_tdata[0:NUM_CE-1];<br>@@ -46,7 +46,9 @@<br>=C2=A0 genvar n;<br>=C2=A0 g=
enerate<br>=C2=A0 =C2=A0 for (n =3D 4; n &lt; NUM_CE; n =3D n + 1) begin<br=
>- =C2=A0 =C2=A0 =C2=A0noc_block_axi_fifo_loopback inst_noc_block_axi_fifo_=
loopback (<br>+ =C2=A0 =C2=A0 =C2=A0noc_block_axi_fifo_loopback #(<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0.STR_SINK_FIFOSIZE(15)<br>+ =C2=A0 =C2=A0 =C2=A0) i=
nst_noc_block_axi_fifo_loopback (<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .bus_clk(b=
us_clk), .bus_rst(bus_rst),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .ce_clk(ce_clk),=
 .ce_rst(ce_rst),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .i_tdata(ce_o_tdata[n]), .=
i_tlast(ce_o_tlast[n]), .i_tvalid(ce_o_tvalid[n]), .i_tready(ce_o_tready[n]=
),<br><br>#################################################################=
#######<br><br><br>After making these modifications to the FPGA sources, yo=
u can build a FPGA image with the commands:<br><br>cd fpga-src/usrp3/top/x3=
00/<br>source setupenv.sh<br>make X310_XG<br><br>Note: Even though you are =
calling X310_XG, it is really a &quot;XGS&quot; image since it has the addi=
tional SRAM fifos.<br><br>After that has completed building, you should wri=
te that FPGA image to the X310 using uhd_image_loader.<br><br>uhd_image_lod=
aer --args &quot;addr=3D192.168.40.2,type=3Dx300&quot; --fpga-path /path/to=
/x300.bit<br><br>After the FPGA image load and restarting the USRP, run uhd=
_usrp_probe and at the end of the output where the RFNoC blocks are listed,=
 you should see two additional FIFO blocks:<br><br>FIFO_0<br>FIFO_1<br><br>=
<br><br><br><br>Random performance tuning notes:<br><br>* Ensure your CPU g=
overnor is set to performance:<br><br>sudo apt install cpufrequtils<br><br>=
To set performance for all cores:<br><br>for ((i=3D0;i&lt;$(nproc);i++)); d=
o sudo cpufreq-set -c $i -r -g performance; done<br><br><br>Verify with:<br=
><br>cpufreq-info<br><br>* Set your network buffers<br><br>sudo sysctl -w n=
et.core.rmem_max=3D625000000<br>sudo sysctl -w net.core.wmem_max=3D62500000=
0<br><br>* Set the MTU to 8000 on your 10Gb NICs<br><br>* Ensure you have p=
threads enabled for your user<br><a href=3D"https://kb.ettus.com/Building_a=
nd_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#T=
hread_priority_scheduling" target=3D"_blank">https://kb.ettus.com/Building_=
and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#=
Thread_priority_scheduling</a><br><br><a href=3D"http://files.ettus.com/man=
ual/page_general.html#general_threading" target=3D"_blank">http://files.ett=
us.com/manual/page_general.html#general_threading</a><br><br><br>* Disable =
hyper threading in bios. This will typically give about a 10% boost in core=
 performance if you can work without the additional cores. You&#39;ll need =
to update your cpu core list in DPDK.<br><br>* Disable KPTI for spectra/mel=
tdown. I would recommend to try disabling the KPTI protections for your CPU=
 if the machine is offline, you may see a 10-15% performance increase.<br><=
br>This can be done by adding the lines below to your /etc/default/grub at =
GRUB_CMDLINE_LINUX_DEFAULT=3D&quot;&quot;, then running sudo update-grub an=
d rebooting.<br><br>pti=3Doff spectre_v2=3Doff l1tf=3Doff nospec_store_bypa=
ss_disable no_stf_barrier<br><br>Note, this disables protections against Me=
ltdown/Spectra (links below). So if you try to do this, I would recommend d=
isconnecting that host from any internet connected network.<br><br><a href=
=3D"https://en.wikipedia.org/wiki/Meltdown_(security_vulnerability)" target=
=3D"_blank">https://en.wikipedia.org/wiki/Meltdown_(security_vulnerability)=
</a><br><a href=3D"https://en.wikipedia.org/wiki/Spectre_(security_vulnerab=
ility)" target=3D"_blank">https://en.wikipedia.org/wiki/Spectre_(security_v=
ulnerability)</a><br><br>* There are additional recommendations here from I=
ntel on various adjustments you can do to improve performance with DPDK:<br=
><a href=3D"http://doc.dpdk.org/guides/linux_gsg/nic_perf_intel_platform.ht=
ml" target=3D"_blank">http://doc.dpdk.org/guides/linux_gsg/nic_perf_intel_p=
latform.html</a><br><br>Specifically I would recommend to try section 10.1.=
3 #3 where you isolate the CPU cores that are used for DPDK.<br><br>* Here =
is a performance report from Intel on DPDK 17.11: <a href=3D"https://fast.d=
pdk.org/doc/perf/DPDK_17_11_Intel_NIC_performance_report.pdf" target=3D"_bl=
ank">https://fast.dpdk.org/doc/perf/DPDK_17_11_Intel_NIC_performance_report=
.pdf</a><br><br>In the tables of boot and bio&#39;s settings the additional=
 CPU options of nohz_full=3D&quot;&quot; and rcu_nocbs=3D&quot;&quot; are a=
dded to their kernel configs, this may help as well.<br><br>Additionally th=
ey made the changes listed below:<br><br>CPU Power and Performance Policy &=
lt;Performance&gt; (you should already be doing this)<br>CPU C-state Disabl=
ed<br>CPU P-state Disabled<br>Enhanced Intel=C2=AE Speedstep=C2=AE Tech Dis=
abled<br>Turbo Boost Disabled<br><br><br><br><br>Regards,<br>Nate Temple</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Dec 11, 2019 at 9:18 AM Thomas Harder &lt;<a href=3D"mailto:Thom=
as.Harder@oca.eu" target=3D"_blank">Thomas.Harder@oca.eu</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"=
><div><p class=3D"MsoNormal">Rob,</p><p class=3D"MsoNormal">I am definitely=
 interested in your costum =E2=80=98txarb=E2=80=99 RFNoC block. For now I a=
m using tx waveforms of about 10.000 samples, so the 2^15 samples would be =
sufficient.</p><p class=3D"MsoNormal">I was already searching what exactly =
this SRAM image means. Because today I was able to setup DPDK with UHD <spa=
n style=3D"font-family:&quot;Arial&quot;,sans-serif">3.14.1</span> and the =
benchmark_rate code(excactly described as in the mail of Nate) was still fu=
ll of underruns with the stock XG fpga image which I downloaded with uhd_im=
ages_downloader. So I will also try to build a second FIFO block, since I h=
ave still for two weeks the test version of Vivado.</p><p class=3D"MsoNorma=
l">Thomas</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"Mso=
Normal"><u></u>=C2=A0<u></u></p><div style=3D"border-color:rgb(225,225,225)=
 currentcolor currentcolor;border-style:solid none none;border-width:1pt me=
dium medium;padding:3pt 0in 0in"><p class=3D"MsoNormal" style=3D"border:med=
ium none;padding:0in"><b>From: </b><a href=3D"mailto:rkossler@nd.edu" targe=
t=3D"_blank">Rob Kossler</a><br><b>Sent: </b>Wednesday, December 11, 2019 4=
:50 PM<br><b>To: </b><a href=3D"mailto:Thomas.Harder@oca.eu" target=3D"_bla=
nk">Thomas Harder</a>; <a href=3D"mailto:nate.temple@ettus.com" target=3D"_=
blank">Nate Temple</a><br><b>Subject: </b>Re: [USRP-users] transmitting on =
two channels with replay block</p></div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><div><div><p class=3D"MsoNormal">Thomas,</p></div><div><p cla=
ss=3D"MsoNormal">I believe that Nate and I were saying basically the same t=
hing.=C2=A0 When he referred to an SRAM image, I believe that this means an=
 image with the FIFO blocks.=C2=A0 I believe that such an image needs to be=
 built by the user (rather than downloaded using uhd_images_downloader), bu=
t I&#39;m not 100% certain.</p></div><div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p></div><div><p class=3D"MsoNormal">If you are interested, I ha=
ve a custom &#39;txarb&#39; RFNoC block that implements my 2nd option below=
.=C2=A0 By default, it includes storage of up to 2^15 samples, but this can=
 be modified using an input parameter (FPGA resources permitting). This blo=
ck requires some specialized behavior, but it is pretty simple.=C2=A0 Simil=
ar to the Replay block, you need to construct a custom RFNoC graph that con=
nects the txarb block to the Radio.=C2=A0 When you want to stream, you need=
 to stream just one full waveform to the txarb=C2=A0block.=C2=A0 Once the t=
xarb=C2=A0block receives end-of-burst, it will automatically stop &quot;rec=
ording the samples to memory&quot; and begin &quot;playing the samples from=
 memory repeatedly&quot;.=C2=A0 The streaming will continue indefinitely un=
til you send a new tx waveform.=C2=A0 If the new tx waveform contains less =
than 2 samples, the streaming is turned off.=C2=A0 There are no control reg=
isters to worry about. Timed behavior is supported because the block preser=
ves the command time of the incoming stream from the host when it starts pl=
aying out.</p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></d=
iv><div><p class=3D"MsoNormal">It is not terribly difficult to build this c=
ustom block, but if you haven&#39;t built out-of-tree RFNOC blocks before, =
it might be easiest to just put this block in-tree (in the Ettus folder str=
ucture) and manually modify makefiles as needed. Let me know if you are int=
erested.</p></div><div><p class=3D"MsoNormal">Rob</p></div><div><p class=3D=
"MsoNormal"><u></u>=C2=A0<u></u></p></div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><div><div><p class=3D"MsoNormal">On Wed, Dec 11, 2019 at 10:0=
7 AM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_bl=
ank">nate.temple@ettus.com</a>&gt; wrote:</p></div><blockquote style=3D"bor=
der-color:currentcolor currentcolor currentcolor rgb(204,204,204);border-st=
yle:none none none solid;border-width:medium medium medium 1pt;padding:0in =
0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div><div><p class=3D"MsoNormal" styl=
e=3D"margin-left:4.8pt"><span style=3D"font-family:&quot;Arial&quot;,sans-s=
erif">Hi Thomas,<br><br>One option instead of using the Replay block could =
be to stream 2x 200e6 from your host. <br><br>On the X310, this requires us=
ing a SRAM image and DPDK. DPDK support was added with UHD 3.14.1.0 for the=
 X310, I&#39;d suggest to use 3.14.1.1 at this time though.<br><br>Some lin=
ks on DPDK:<br><br><a href=3D"https://www.dpdk.org/" target=3D"_blank">http=
s://www.dpdk.org/</a><br><a href=3D"http://files.ettus.com/manual/page_dpdk=
.html" target=3D"_blank">http://files.ettus.com/manual/page_dpdk.html</a><b=
r><br>I&#39;ve been able to run 2x2 @ 200e6 with the X310 with DPDK using a=
 4 GHz CPU.<br><br>./benchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_=
rate 200e6 --tx_channels 0,1 --args &quot;addr=3D192.168.10.2,second_addr=
=3D192.168.20.2,use_dpdk=3D1,num_recv_frames=3D512,enable_tx_dual_eth=3D1,s=
kip_ddc=3D1,skip_duc=3D1&quot;<br><br>num_recv_frames=3D512 can help if you=
&#39;re seeing overflows.<br><br>enable_tx_dual_eth=3D1 is required for 2x =
TX @ 200e6<br><br>skip_ddc=3D1,skip_duc=3D1 can help as well since you&#39;=
d be sending at full rate.<br><br><br><br>Regards,<br>Nate Temple<u></u><u>=
</u></span></p></div></div><p class=3D"MsoNormal" style=3D"margin-left:4.8p=
t"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal" style=3D"margin=
-left:4.8pt">On Wed, Dec 11, 2019 at 7:03 AM Rob Kossler via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:</p></div><blockquote style=3D"border-color:=
currentcolor currentcolor currentcolor rgb(204,204,204);border-style:none n=
one none solid;border-width:medium medium medium 1pt;padding:0in 0in 0in 6p=
t;margin:5pt 0in 5pt 4.8pt"><div><div><p class=3D"MsoNormal" style=3D"margi=
n-left:9.6pt">I do not think it is possible using the stock FPGA image.=C2=
=A0 However, I can think of a couple of possibilities</p></div><div><p clas=
s=3D"MsoNormal" style=3D"margin-left:45.6pt"><u></u><span style=3D"font-siz=
e:10pt;font-family:Symbol"><span>=C2=B7<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span>=
<u></u>On the N310, Ettus includes 4 FIFO blocks (rather than the DmaFIFO w=
hich used the off-FPGA RAM for memory), to provide capability for 4x125 MS/=
s streaming. Perhaps if you built an X310 FPGA image with 2 such FIFO block=
s, you could use these rather than the DmaFIFO and achieve the desired stre=
aming.=C2=A0 Note that this requires a Vivado license to build your own FPG=
A image, but does not require FPGA experience because you would be building=
 an image with &quot;stock&quot; blocks.=C2=A0 One caution though is that s=
treaming at this very high rate still requires a high performance host and =
so it is still possible that you would have underruns if your host could no=
t keep up.=C2=A0 If you go this route, I believe you will likely need to us=
e the &quot;DPDK&quot; capability which is a bit of a pain to configure and=
 get it working properly.</p><p class=3D"MsoNormal" style=3D"margin-left:45=
.6pt"><u></u><span style=3D"font-size:10pt;font-family:Symbol"><span>=C2=B7=
<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 </span></span></span><u></u>Another possibility is to creat=
e a custom RFNoC block that is similar to the replay block but that uses FP=
GA memory to store a fixed duration waveform and then plays it out cyclical=
ly like the replay block. The Ettus &#39;window&#39; RFNoC block provides a=
 good example of how to store coefficients and play them out repeatedly.=C2=
=A0 But, making the needed modifications is not a trivial task except for s=
omeone who is pretty good at FPGA programming.</p><div><p class=3D"MsoNorma=
l" style=3D"margin-left:9.6pt">Given that you were trying the replay block,=
 I&#39;m guessing that your Tx waveforms are of fixed duration.=C2=A0 What =
is the duration (in number of samples) that you require?</p></div><div><p c=
lass=3D"MsoNormal" style=3D"margin-left:9.6pt">Rob</p></div></div><p class=
=3D"MsoNormal" style=3D"margin-left:9.6pt"><u></u>=C2=A0<u></u></p><div><di=
v><p class=3D"MsoNormal" style=3D"margin-left:9.6pt">On Wed, Dec 11, 2019 a=
t 5:05 AM Thomas Harder &lt;<a href=3D"mailto:Thomas.Harder@oca.eu" target=
=3D"_blank">Thomas.Harder@oca.eu</a>&gt; wrote:</p></div><blockquote style=
=3D"border-color:currentcolor currentcolor currentcolor rgb(204,204,204);bo=
rder-style:none none none solid;border-width:medium medium medium 1pt;paddi=
ng:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div><div><p class=3D"MsoNorma=
l" style=3D"margin-left:0.2in">Thank you Rob for this comment.</p><p class=
=3D"MsoNormal" style=3D"margin-left:0.2in">But I am not sure if I understan=
d you correctly. Do you want to say, that it is <b>IMPOSSIBLE</b> to stream=
 TX two different waveforms synchronized =C2=A0on the 2 channels of the x31=
0 with the full bandwidth of 200MS/s on each channel?</p><p class=3D"MsoNor=
mal" style=3D"margin-left:0.2in">That is what I am trying the last 6 months=
 full time, starting with Labview under windows and then UHD under Linux wi=
th a Dell Precision 5820 desktop (16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8=
) with MXI connection, dual 10Gbit connection(Intel X520-DA2), the replay b=
lock recently: always the same result: continuous underruns.</p><p class=3D=
"MsoNormal" style=3D"margin-left:0.2in">If you can confirm that this is not=
 possible without an important FPGA change (because I have no experience in=
 this field and I have not the time to invest into it), I must search for a=
nother solution to create two different synchronized RF waveforms with 160M=
Hz bandwidth (optical, electronical,=E2=80=A6) because this will be just a =
part of my experimental setup but it is crucial to go on .</p><p class=3D"M=
soNormal" style=3D"margin-left:0.2in">I am thankful for any advise,</p><p c=
lass=3D"MsoNormal" style=3D"margin-left:0.2in">Thomas</p><p class=3D"MsoNor=
mal" style=3D"margin-left:0.2in">=C2=A0</p><p class=3D"MsoNormal" style=3D"=
margin-left:0.2in">=C2=A0</p><div style=3D"border-style:solid none none;bor=
der-width:1pt medium medium;padding:3pt 0in 0in;border-color:currentcolor">=
<p class=3D"MsoNormal" style=3D"margin-left:0.2in"><b>From: </b><a href=3D"=
mailto:rkossler@nd.edu" target=3D"_blank">Rob Kossler</a><br><b>Sent: </b>T=
uesday, December 10, 2019 5:01 AM<br><b>To: </b><a href=3D"mailto:Thomas.Ha=
rder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Cc: </b><a href=3D"m=
ailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter</a>; <a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two channels wit=
h replay block</p></div><p class=3D"MsoNormal" style=3D"margin-left:0.2in">=
=C2=A0</p><div><p class=3D"MsoNormal" style=3D"margin-left:0.2in">Apart fro=
m solving the underrun issue, there is also an issue with synchronization.=
=C2=A0 The replay block doesn&#39;t presently support timed commands.</p><d=
iv><p class=3D"MsoNormal" style=3D"margin-left:0.2in">=C2=A0</p></div><div>=
<p class=3D"MsoNormal" style=3D"margin-left:0.2in">And, as a side note, the=
 issue with streaming from the host is not just the host.=C2=A0 The DMA FIF=
O has a maximum bandwidth of something like 600 MS/s (combination of all in=
puts and outputs) that precludes streaming 400 MS/s in and out of the block=
 simultaneously.=C2=A0 So, even if the host could keep up, the FIFO could n=
ot.</p></div><div><p class=3D"MsoNormal" style=3D"margin-left:0.2in">Rob</p=
></div></div><p class=3D"MsoNormal" style=3D"margin-left:0.2in">=C2=A0</p><=
div><div><p class=3D"MsoNormal" style=3D"margin-left:0.2in">On Mon, Dec 9, =
2019 at 4:34 AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wr=
ote:</p></div><blockquote style=3D"border-color:currentcolor currentcolor c=
urrentcolor windowtext;border-style:none none none solid;border-width:mediu=
m medium medium 1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div>=
<div><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">Hi Sam,</p><p clas=
s=3D"MsoNormal" style=3D"margin-left:19.2pt">Thank you for your reply.</p><=
p class=3D"MsoNormal" style=3D"margin-left:19.2pt">This morning I set the M=
CR to 184.32 and I am still having continuous underruns using also </p><p c=
lass=3D"MsoNormal" style=3D"margin-left:19.2pt"><span style=3D"font-size:9p=
t;font-family:Consolas;color:rgb(36,41,46)">replay_ctrl-&gt;</span><span st=
yle=3D"font-size:9pt;font-family:Consolas;color:rgb(0,92,197)">get_record_f=
ullness</span></p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">for b=
oth channels.</p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">=C2=A0=
</p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">But since I need th=
e full bandwidth of 160MHz I would like implement a second replay block in =
my fpga image.</p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">=C2=
=A0</p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">Could anyone hel=
p me with this? </p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">I a=
m really new in fpga programming and for the image with one replay block I =
was just following the instructions in <a href=3D"https://kb.ettus.com/Usin=
g_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Using_the_=
RFNoC_Replay_Block</a>.</p><p class=3D"MsoNormal" style=3D"margin-left:19.2=
pt">Thank you,</p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">Thoma=
s</p><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">=C2=A0</p><p class=
=3D"MsoNormal" style=3D"margin-left:19.2pt">=C2=A0</p><div style=3D"border-=
style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in;bo=
rder-color:currentcolor"><p class=3D"MsoNormal" style=3D"margin-left:19.2pt=
"><b>From: </b><a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sa=
m Reiter</a><br><b>Sent: </b>Friday, December 6, 2019 10:23 PM<br><b>To: </=
b><a href=3D"mailto:Thomas.Harder@oca.eu" target=3D"_blank">Thomas Harder</=
a><br><b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] tr=
ansmitting on two channels with replay block</p></div><p class=3D"MsoNormal=
" style=3D"margin-left:19.2pt">=C2=A0</p><div><div><p class=3D"MsoNormal" s=
tyle=3D"margin-left:19.2pt">Thomas,</p></div><div><p class=3D"MsoNormal" st=
yle=3D"margin-left:19.2pt">=C2=A0</p></div><div><p class=3D"MsoNormal" styl=
e=3D"margin-left:19.2pt">Upon further investigation, we may be running up t=
o a practical limit of a single CHDR interface rather than an issue with yo=
ur code. A single replay block servicing two radios will have a max (theore=
tical) rate of 187.5 MSPS on either channel. This means that you might be a=
ble to squeeze full rate out on 2 channels with an MCR of 184.32, but that&=
#39;s cutting it pretty close. Sounds like 2 channels at 200 MSPS with a re=
play setup will require 2 replay blocks serving each channel independently.=
 If you end up trying either of the above out, I&#39;d be curious to know w=
hat results you observe.</p></div><div><p class=3D"MsoNormal" style=3D"marg=
in-left:19.2pt">=C2=A0</p></div><div><div><div><div><div><div><p class=3D"M=
soNormal" style=3D"margin-left:19.2pt">Sam Reiter </p><div><p class=3D"MsoN=
ormal" style=3D"margin-left:19.2pt">Ettus Research</p></div></div></div></d=
iv></div></div><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">=C2=A0</=
p></div></div><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">=C2=A0</p=
><div><div><p class=3D"MsoNormal" style=3D"margin-left:19.2pt">On Fri, Dec =
6, 2019 at 2:38 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" t=
arget=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:</p></div><blockquote s=
tyle=3D"border-color:currentcolor currentcolor currentcolor windowtext;bord=
er-style:none none none solid;border-width:medium medium medium 1pt;padding=
:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div><p class=3D"MsoNormal" styl=
e=3D"margin-left:24pt">Thomas,</p><div><p class=3D"MsoNormal" style=3D"marg=
in-left:24pt">=C2=A0</p></div><div><p class=3D"MsoNormal" style=3D"margin-l=
eft:24pt">I&#39;d need to set it up on my end, but I believe you can TX two=
 distinct waveforms from a single replay block instance. You&#39;d need to =
make sure that your adding your data to the buffer in separate locations an=
d at an address that is a multiple of 8 bytes (which it looks like you&#39;=
re doing from the above snippets). Are you seeing continuous underruns, or =
just a handful at the beginning on the run? Does your duplicated code also =
use:</p></div><div><p class=3D"MsoNormal" style=3D"margin-left:24pt">=C2=A0=
</p></div><div><p class=3D"MsoNormal" style=3D"margin-left:24pt"><span styl=
e=3D"font-size:9pt;font-family:Consolas;color:rgb(36,41,46)">replay_ctrl-&g=
t;</span><span style=3D"font-size:9pt;font-family:Consolas;color:rgb(0,92,1=
97)">get_record_fullness</span></p></div><div><p class=3D"MsoNormal" style=
=3D"margin-left:24pt">=C2=A0</p></div><div><p class=3D"MsoNormal" style=3D"=
margin-left:24pt">on both channels before kicking off the stream start?</p>=
</div><div><p class=3D"MsoNormal" style=3D"margin-left:24pt">=C2=A0</p></di=
v><div><div><div><div><div><div><p class=3D"MsoNormal" style=3D"margin-left=
:24pt">Sam Reiter=C2=A0</p><div><p class=3D"MsoNormal" style=3D"margin-left=
:24pt">Ettus Research</p></div></div></div></div></div></div></div></div><p=
 class=3D"MsoNormal" style=3D"margin-left:24pt">=C2=A0</p><div><div><p clas=
s=3D"MsoNormal" style=3D"margin-left:24pt">On Wed, Dec 4, 2019 at 3:48 AM T=
homas Harder via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</p></div><bl=
ockquote style=3D"border-color:currentcolor currentcolor currentcolor windo=
wtext;border-style:none none none solid;border-width:medium medium medium 1=
pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div><div><p class=3D"=
MsoNormal" style=3D"margin-left:0.4in">Hello everyone,</p><p class=3D"MsoNo=
rmal" style=3D"margin-left:0.4in">Is it possible to transmit two different =
waveforms on the two channels of the USRP X310 with the two UBX-160 daughte=
rboards?</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">I want to tr=
ansmit two different waveforms simultaneous (synchronized ) on the two chan=
nels of the USRP with the full sample rate of 200 MS/s. I tried already to =
do it with a dual 10Gbit-ethernet connection and I seemed to be limited by =
my computer. Now I am trying to do it with the replay block.</p><p class=3D=
"MsoNormal" style=3D"margin-left:0.4in">=C2=A0</p><p class=3D"MsoNormal" st=
yle=3D"margin-left:0.4in">I built the FPGA image with one Replay block as d=
escribed in <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" t=
arget=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a> to r=
un the example =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working=
 fine if I transmit just on one channel. Now I was modifying the code by co=
nnecting the replay block to both channels:</p><p class=3D"MsoNormal" style=
=3D"margin-left:0.4in">replay_graph-&gt;connect(replay_ctrl-&gt;get_block_i=
d(),replay_chan,tx_blockid,tx_chan,replay_spp);</p><p class=3D"MsoNormal" s=
tyle=3D"margin-left:0.4in">replay_graph-&gt;connect(replay_ctrl-&gt;get_blo=
ck_id(),replay_chan1,tx_blockid1,tx_chan,replay_spp);</p><p class=3D"MsoNor=
mal" style=3D"margin-left:0.4in">=C2=A0</p><p class=3D"MsoNormal" style=3D"=
margin-left:0.4in">and writing the same waveform into another region of the=
 DRAM-buffer:</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">replay_=
ctrl-&gt;config_record(0,words_to_replay*replay_word_size, replay_chan);</p=
><p class=3D"MsoNormal" style=3D"margin-left:0.4in">replay_ctrl-&gt;config_=
record(20000,words_to_replay*replay_word_size, replay_chan1);</p><p class=
=3D"MsoNormal" style=3D"margin-left:0.4in">and</p><p class=3D"MsoNormal" st=
yle=3D"margin-left:0.4in">replay_ctrl-&gt;config_play(0,words_to_replay*rep=
lay_word_size, replay_chan);</p><p class=3D"MsoNormal" style=3D"margin-left=
:0.4in">replay_ctrl-&gt;config_play(20000,words_to_replay*replay_word_size,=
 replay_chan1);</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=
=A0</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">where </p><p clas=
s=3D"MsoNormal" style=3D"margin-left:0.4in">words_to_replay*replay_word_siz=
e=3D16000</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">replay_chan=
=3D0</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">replay_chan1=3D1=
</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">tx_blockid=3D0/Radio=
_0</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">tx_blockid=3D0/Rad=
io_1</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=A0</p><p cla=
ss=3D"MsoNormal" style=3D"margin-left:0.4in">then I stream my waveforms to =
the replay block as defined in the example and I start to replay the data:<=
/p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">replay_ctrl-&gt;issue=
_stream_cmd(stream_cmd, replay_chan);</p><p class=3D"MsoNormal" style=3D"ma=
rgin-left:0.4in">replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan1)=
;</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=A0</p><p class=
=3D"MsoNormal" style=3D"margin-left:0.4in">It works but with plenty of Unde=
rflows!!</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=A0</p><p=
 class=3D"MsoNormal" style=3D"margin-left:0.4in">So what does it mean when =
it says in the manual:</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in=
">=E2=80=9CNote that the record and playback buffers do not need to the sam=
e, allowing a single Replay block to both record and playback to different =
regions of memory<b> simultaneously</b>.=E2=80=9D</p><p class=3D"MsoNormal"=
 style=3D"margin-left:0.4in">(<a href=3D"https://kb.ettus.com/Using_the_RFN=
oC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Rep=
lay_Block</a>)?</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=
=A0</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">Because in the ma=
nual it says also:</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=
=E2=80=9CThe replay block has the following features: One input and <b>one<=
/b> output=E2=80=9D</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">(=
<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__bloc=
k__ctrl.html" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1=
rfnoc_1_1replay__block__ctrl.html</a>)</p><p class=3D"MsoNormal" style=3D"m=
argin-left:0.4in">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin-left:0.4=
in">So if the replay block has just one output why does it have two channel=
s connected to it (replay_chan=3D 0 and 1)?</p><p class=3D"MsoNormal" style=
=3D"margin-left:0.4in">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin-lef=
t:0.4in">If one replay block can just stream to one channel at the same tim=
e, can I implement easily a second replay block in the FPGA to stream on th=
e two channels of my USRP two different waveforms simultaneously?</p><p cla=
ss=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=A0</p><p class=3D"MsoNorma=
l" style=3D"margin-left:0.4in">Thank you,</p><p class=3D"MsoNormal" style=
=3D"margin-left:0.4in">Thomas</p><p class=3D"MsoNormal" style=3D"margin-lef=
t:0.4in">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=
=A0</p><p class=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=A0</p><p clas=
s=3D"MsoNormal" style=3D"margin-left:0.4in">=C2=A0</p><p class=3D"MsoNormal=
" style=3D"margin-left:0.4in">=C2=A0</p></div></div></blockquote></div></bl=
ockquote></div><p class=3D"MsoNormal" style=3D"margin-left:0.4in">_________=
______________________________________<br>USRP-users mailing list<br><a hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.=
ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></p><p class=3D"MsoNormal" style=3D"margi=
n-left:19.2pt">=C2=A0</p></div></div></blockquote></div><p class=3D"MsoNorm=
al" style=3D"margin-left:19.2pt">__________________________________________=
_____<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettu=
s.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
></p><p class=3D"MsoNormal" style=3D"margin-left:0.2in">=C2=A0</p></div></d=
iv></blockquote></div></div></blockquote></div></blockquote></div></div><p =
class=3D"MsoNormal" style=3D"margin-left:9.6pt">___________________________=
____________________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-u=
sers@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><=
a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com</a></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></=
div></blockquote></div>
</blockquote></div>

--00000000000007f8a80599716769--


--===============7106953028212128439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7106953028212128439==--

