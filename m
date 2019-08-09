Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 442A387C66
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 16:13:52 +0200 (CEST)
Received: from [::1] (port=42994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hw5eO-0005Iw-Ga; Fri, 09 Aug 2019 10:13:48 -0400
Received: from ikarus.iap-kborn.de ([192.108.71.125]:51024)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <pfeffer@iap-kborn.de>)
 id 1hw5eK-0005By-DB
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 10:13:44 -0400
Received: from herold.iap-kborn.de (herold [195.37.145.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ikarus.iap-kborn.de (Postfix) with ESMTPSA id E9BD4E8CD07
 for <usrp-users@lists.ettus.com>; Fri,  9 Aug 2019 16:13:01 +0200 (CEST)
Received: from p4FD6C690.dip0.t-ipconnect.de (p4FD6C690.dip0.t-ipconnect.de
 [79.214.198.144]) by r-mail.iap-kborn.de (Horde Framework) with HTTPS; Fri,
 09 Aug 2019 16:13:01 +0200
Date: Fri, 09 Aug 2019 16:13:01 +0200
Message-ID: <20190809161301.Horde.vHXXWxd4o4D4jLcpyD4HWc1@r-mail.iap-kborn.de>
To: usrp-users@lists.ettus.com
In-Reply-To: <mailman.54.1565280002.26642.usrp-users_lists.ettus.com@lists.ettus.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
Subject: Re: [USRP-users] USRP-users Digest, Vol 108, Issue 8
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nico Pfeffer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nico Pfeffer <pfeffer@iap-kborn.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="Yes"
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

Dear Marcus,

I fixed it. I was purge/remove all the uhd and gnuradio stuff from my  
system and then apply the pre-requirements for ubuntu18.04LTS and  
using the latest uhd version 003.014.001.000 (added by the ppa) then  
I've done the following,

$ uhd_images_downloader

Then I've looked my usrp with

$ uhd_find_devices

Then I retried the benchmark test dn it failed .... BUT .... I didn't  
changed the image of the FPGA, so I've used

$ uhd_image_loader

This failed by firmware verification ... DON'T WORRY ... I did the  
image safe-mode and then retried the procedure .... voila ....  
everything fine with image upload ..... power cycle the usrp .... did  
the benchmark again with 200kHz .... SUCCESS .... then with 10MHz ....  
SUCCESS

Thank you very much ... savior of the day, nothing more to say :)


Best regards, Nico
Zitat von usrp-users-request@lists.ettus.com:

> Send USRP-users mailing list submissions to
> 	usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
> 	http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
> 	usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
> 	usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
>
> Today's Topics:
>
>    1. Re: Delayed samples receiving, X310 (Nick Foster)
>    2. USRP B210 FPGA Amplify-forward (Razvan-Andrei Stoica)
>    3. Re: 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310 (Cherif Diouf)
>    4. USRP N200 has sequence error only on transmission (Nico Pfeffer)
>    5. Re: RFNoC Polyphase Channelizer updates (Royce Connerley)
>    6. RFX-2400 - Band Pass Filter (Iain Young)
>    7. Re: RFNoC Polyphase Channelizer updates (EJ Kreinar)
>    8. Fwd: Varying delay in signal reception (Sneha vasan)
>    9. Re: Fwd: Varying delay in signal reception (Michael Dickens)
>   10. Re: RFX-2400 - Band Pass Filter (Marcus D. Leech)
>   11. Re: USRP N200 has sequence error only on transmission
>       (Marcus D. Leech)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Wed, 7 Aug 2019 09:51:44 -0700
> From: Nick Foster <bistromath@gmail.com>
> To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Delayed samples receiving, X310
> Message-ID:
> 	<CA+JMMq-r8FqNiaAowi64jo6kh_PdSqhhG4wfzt_12rE6jFTGSg@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> This is exactly what the "timed commands" feature is used for. See the
> documentation here:
>
> https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html
>
> On Wed, Aug 7, 2019 at 7:15 AM Cherif Diouf via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello guys,
>>
>> I have developed a custom RFNoC CE connected to one radio core of the
>> X310.
>> The core will act as receiver and provide samples to my CE for further
>> processing (Antennas-> RX frontend + noc_radio_core -> custom CE).
>> However, I would like the radio core to start sampling and  
>> providing data only
>> after a deterministic and fixed duration t0 consistent with the 5ns time
>> counter and likely synchronized to an external PPS used as time reference.
>>
>> From python, I know I can use the "set_time_next_pps" call to initialize
>> the USRP X310 time. But how to tell the radio core to stay in a idle state
>> until the time keeper matches my duration t0?
>> Can it be done by  software? Or the only option is to use CHDR packets and
>> VITA timing?
>>
>> Best Regards
>> Cherif
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:  
> <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190807/a8711475/attachment-0001.html>
>
> ------------------------------
>
> Message: 2
> Date: Wed, 07 Aug 2019 21:41:49 +0200
> From: Razvan-Andrei Stoica <r.stoica@wiosense.de>
> To: "usrp-users" <usrp-users@lists.ettus.com>
> Subject: [USRP-users] USRP B210 FPGA Amplify-forward
> Message-ID:
> 	<16c6d9a140f.b4d0b90640043.7921529196409486820@wiosense.de>
> Content-Type: text/plain; charset="utf-8"
>
> Hello,
>
>
>
> I am working with 2 B210 units trying to realize an out-of-band  
> amplify-forward wideband relay.
>
>
>
> The signal flow is simple and was already implemented using the  
> GNURadio blocks and associated UHD USRP drivers.
>
>
>
> The input signal is DCed to BB by one of the RF ends and  
> additionally amplified if need be in SW. The output is then rerouted  
> to the second RF end on a higher frequency then that of the output.
>
>
>
> The second device performs the same operations but reconverts the  
> relayed signal to the initial frequency band.
>
>
>
> This works quite okay with the host processing and control over a BW  
> of 22 Msps, with the occasional bursts of lost samples.
>
>
>
> However, due to latency reasons and easier deployment I would like  
> to understand if it is possible to implement this simple signal  
> processing logic on the FPGA and flash this module such that it  
> operates automatically upon the loading of the firmware.
>
>
>
> Any advice or guides / tutorials on doing this would be greatly appreciated!
>
>
>
> Best,
>
> Andrei
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:  
> <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190807/b6d71c24/attachment-0001.html>
>
> ------------------------------
>
> Message: 3
> Date: Thu, 8 Aug 2019 07:50:04 +0000
> From: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
> To: Nick Foster <bistromath@gmail.com>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP
> 	X310
> Message-ID: <c0eaef84471d450eb094cbde30009471@tudelft.nl>
> Content-Type: text/plain; charset="iso-8859-1"
>
>> From What I have observed t
>
> I did some measurements at the oscilloscope but, from my  
> observations  the 214.86 Mhz clock and the 200 MHz clock are not  
> synchronized. I might be wrong. Then I also looked to the x300.v  
> files.
>
> It seems that  the two clocks are deriving from two different clock  
> branches feeded by two inputs.
> The 214 MHz (bus_clk) derived from the first branch.
>
> The 200 MHz (radio_clk) derived from the second branch. But I don't  
> see where they are synchronized. From what I have observed only the  
> branch 2 is sync to the 10 MHz reference.
>
> In any cases I am now using the radio_clk as my CE main clock and  
> the system is working  as expected.
>
> (See below for the branches)
> Best Regards
> Cherif
>
>
>
>
> (from x300.v verilog file)
>
> ====branch 2 (radio_clk)
>    wire radio_clk_locked;
>    radio_clk_gen radio_clk_gen (
>       .clk_in1_p(FPGA_CLK_p), .clk_in1_n(FPGA_CLK_n),
>       .CLK_OUT1(radio_clk), .CLK_OUT2(radio_clk_2x), .CLK_OUT3(dac_dci_clk),
>       .RESET(sw_rst[2]), .LOCKED(radio_clk_locked));
>
> .
>
> ====branch 1 (bus_clk)
>
>    IBUFG fpga_125MHz_clk_buf (
>      .I(FPGA_125MHz_CLK),
>      .O(fpga_clk125));
>
>     
> //----------------------------------------------------------------------------
>    //  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
>    //   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
>     
> //----------------------------------------------------------------------------
>    // CLK_OUT1___187.500______0.000______50.0_______85.263_____73.940
>    // CLK_OUT2___125.000______0.000______50.0_______91.831_____73.940
>    // CLK_OUT3____93.750______0.000______50.0_______96.813_____73.940
>    // CLK_OUT4___214.286______0.000______50.0_______83.210_____73.940
>    //
>     
> //----------------------------------------------------------------------------
>    // Input Clock   Freq (MHz)    Input Jitter (UI)
>     
> //----------------------------------------------------------------------------
>    // __primary_________125.000____________0.010
>
>    localparam BUS_CLK_RATE = 32'd187500000;
>
>    wire ioport2_clk_unbuf;
>
>    bus_clk_gen bus_clk_gen (
>       .CLK_IN1(fpga_clk125),
>       .CLKFB_IN(ioport2_clk),
>       .CLK_OUT1(bus_clk),
>       .CLK_OUT2_UNBUF(/* unused */),    //This exists to make the IP  
> generate a 125MHz FB clock
>       .CLK_OUT3(bus_clk_div2), //bus_clk divided by 2. used by sc/zpu
>       .CLK_OUT4(ce_clk),
>       .CLKFB_OUT(ioport2_clk_unbuf),
>       .LOCKED(bus_clk_locked));
>
>
>
> ________________________________
> From: Nick Foster <bistromath@gmail.com>
> Sent: Monday, August 5, 2019 10:39 PM
> To: Cherif Diouf
> Cc: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
>
> All synthesized clocks are synchronized to whatever reference is selected.
>
> On Mon, Aug 5, 2019 at 1:03 PM Cherif Diouf  
> <C.E.V.Diouf@tudelft.nl<mailto:C.E.V.Diouf@tudelft.nl>> wrote:
>
> Thanks Nick,
>
>
> That's fine as explanation.  I however need a HW clock synchronized  
> to the 10 MHz external reference. I am using some local counters to  
> run timely operations. If not using the 200 MHz clock Is it possible  
> to synchronize the 214 MHz clock to the 10 MHz external reference.
>
>
> Best Regards
>
> Cherif
>
>
> ________________________________
> From: Nick Foster <bistromath@gmail.com<mailto:bistromath@gmail.com>>
> Sent: Monday, August 5, 2019 6:33:37 PM
> To: Cherif Diouf
> Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
>
> The radio TX frontend backpressures upstream blocks. You don't have  
> to worry about providing samples at the frontend rate. There is no  
> reason to use a 200MHz clock in your block.
>
> Remember: if the frontend is operating at 200Msps, then the samples  
> your block is producing must assume a 200Msps sample rate. It  
> doesn't matter at all that the clock driving your block is 214MHz --  
> that only means that the logic is operating a bit faster.
>
> Nick
>
> On Mon, Aug 5, 2019 at 8:58 AM Cherif Diouf via USRP-users  
> <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>
>
>
> ________________________________
>
> Hello guys,
>
>
>
> I am working with the X310 USRP. I have developed customed RFNoC CEs  
> running at ce_clk which is no more 200 MHz but rather 214 MHz.
>
> So my blocks are providing samples to the RF frontends at 214 MSps.  
> Is that right?
>
> Then how the operation can be consistent when the sampling rate of  
> the RF frontends is still at 200MSps.
>
>
> Is it possible to synchronize both the 214 MHz and the 200 MHz  
> clocks to the same 10 MHz external reference, or to  use the 200 MHz  
> reference clock as my HW blocks main clock?
>
>
>
>
> Best Regards
>
> Cherif
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:  
> <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190808/7e8ae991/attachment-0001.html>
>
> ------------------------------
>
> Message: 4
> Date: Thu, 08 Aug 2019 12:02:55 +0200
> From: Nico Pfeffer <pfeffer@iap-kborn.de>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] USRP N200 has sequence error only on
> 	transmission
> Message-ID:
> 	<20190808120255.Horde.nRQy1hoRGwVjGTrrjL8TcMH@r-mail.iap-kborn.de>
> Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
>
> Hello,
>
> For my current problem I also searched through the net and found this
> one here:
>
>
> http://ettus.80997.x6.nabble.com/USRP-users-Sequence-Errors-N200-td13041.html
>
> Somehow, after a lot of communicating and also adapting the steps
> recommended their, the problem was not solved. So maybe I start with
> explaining what my problem is and what I have done maybe wrong:
>
>
>
> I'm observing strange behaviour on transmission with USRP N200 in
> combination with Daughterboards Basic-Tx and Basic-Rx. First I would
> like to share some basic information:
>
>   Operating System : Ubuntu 18.04LTS (64bit)
>   Kernel Version   : 4.15.0-55-generic
>   GnuRadio         : 3.7.11
>   UHD              : 003.010.003.000
>   Network-Cards    : Realtek RTL8111/8168/8411 PCI Express Gigabit
> Ethernet Controller
>                      Intel I219-LM
>
>
> I was using the following commands for installing uhd and gnuradio:
>
>   $ sudo apt install gnuradio
>   $ sudo apt install uhd-host
>   $ uhd_images_downloader
>
>
> I'll start with the steps I've done so far:
>
>    - using a USRP-N200 REV D (bought in 2016/17) (was working fine on
> Ubuntu 16.04 LTS, with same network cards)
>    - upgraded my system to Ubuntu 18.04LTS
>    - try using my USRP-N200 with this new operating system adn
> gnuradio (as expected, some compat_num problem)
>    - then using the command listet by gnuradio console with the specified IP
>    - when running the uhd_image_loader some happend during the
> process, because it was not able to
>      verify the FPGA image
>    - then reading the section of device recovery from ettus
>    - I've done the S2 button safe-mode thing and the usrp was found
> with the default 192.168.10.2 ip address
>      using uhd_find_devices
>    - then I retried the uhd_image_loader and it does all steps without
> problems and I changed the ip
>      also to another one "192.168.20.2" with usrp2_recovery.py
>    - after using uhd_find_devices it appers with the new ip
>    - now I was doing the following:
>
> $ ./benchmark_rate --args="type=usrp2,addr=192.168.20.2" --tx_rate
> 200e3 --rx_rate 200e3 --duration 60
>
> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
>
>
> Creating the usrp device with: type=usrp2,addr=192.168.20.2...
> -- Opening a USRP2/N-Series device...
> -- Current recv frame size: 1472 bytes
> -- Current send frame size: 1472 bytes
> Using Device: Single USRP:
>    Device: USRP2 / N-Series Device
>    Mboard 0: N200r4
>    RX Channel: 0
>      RX DSP: 0
>      RX Dboard: A
>      RX Subdev: BasicRX (AB)
>    TX Channel: 0
>      TX DSP: 0
>      TX Dboard: A
>      TX Subdev: BasicTX (AB)
>
> Setting device timestamp to 0...
> Testing receive rate 0.200000 Msps on 1 channels
> Testing transmit rate 0.200000 Msps on 1 channels
> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
> Benchmark rate summary:
>    Num received samples:    12002270
>    Num dropped samples:     0
>    Num overflows detected:  0
>    Num transmitted samples: 12325665
>    Num sequence errors:     115
>    Num underflows detected: 0
>    Num late commands:       0
>    Num timeouts:            0
>
>
> Done!
>
>
> As you can see, I've used 200kHz for both sides which is nothing in
> sense to 5MHz I've used before with the same network card. I was also
> following the recommendation of net.core.wmem/rmem , user thread
> priority and ethtool -G options to increase the performances.
>
>
>
> Best regards, Nico
>
>
>
>
> ------------------------------
>
> Message: 5
> Date: Thu, 8 Aug 2019 07:52:38 -0500
> From: Royce Connerley <royceconnerley@yahoo.com>
> To: EJ Kreinar <ejkreinar@gmail.com>
> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
> Message-ID: <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
> Content-Type: text/plain; charset="utf-8"
>
> EJ:
>
> I want to pick a few narrowband channels scattered over about 5 MHz.  
>  I would like to be able to use your channelizer in an E310.  Do you  
> think it could fit in the E310?s FPGA?  When I run uhd_image_builder  
> with just the channelizer and a FIFO, I?m seeing the following errors:
>
> ERROR: [Place 30-640] Place Check : This design requires more  
> RAMB36/FIFO cells than are available in the target device. This  
> design requires 324 of such cell types but only 140 compatible sites  
> are available in the target device. Please analyze your synthesis  
> results and constraints to ensure the design is mapped to Xilinx  
> primitives as expected. If so, please consider targeting a larger  
> device.
> ERROR: [Place 30-640] Place Check : This design requires more RAMB18  
> and RAMB36/FIFO cells than are available in the target device. This  
> design requires 703 of such cell types but only 280 compatible sites  
> are available in the target device. Please analyze your synthesis  
> results and constraints to ensure the design is mapped to Xilinx  
> primitives as expected. If so, please consider targeting a larger  
> device.
> ERROR: [Place 30-640] Place Check : This design requires more  
> RAMB36E1 cells than are available in the target device. This design  
> requires 324 of such cell types but only 140 compatible sites are  
> available in the target device. Please analyze your synthesis  
> results and constraints to ensure the design is mapped to Xilinx  
> primitives as expected. If so, please consider targeting a larger  
> device.
>
> Royce Connerley
>
>> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>>
>> Hi Royce,
>>
>> Phil and I have been working on the channelizer in the  
>> theseus-cores repo here: gitlab.com/theseus-cores/theseus-cores  
>> <http://gitlab.com/theseus-cores/theseus-cores>
>>
>> The master branch has a (potentially) working channelizer, at least  
>> according to my recent tests on the x310, as long as the network  
>> interface supports the desired output rate.
>>
>> There's also an fpga solution for channel downselection in a branch  
>> that Phil put together. The ball is in my court to turn the crank  
>> and merge to master with supporting software, but I haven't gotten  
>> much of a chance recently.
>>
>> If you're interested in testing we could definitely use some more  
>> people to give it a shot :D Let me know if you need a sample  
>> bitstream or if you can build one yourself.
>>
>> EJ
>>
>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users  
>> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>  
>> wrote:
>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC  
>> polyphase channelizer.  Has there been any activity on this?
>>
>> Royce Connerley
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com  
>> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:  
> <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190808/6c462caa/attachment-0001.html>
>
> ------------------------------
>
> Message: 6
> Date: Thu, 8 Aug 2019 14:01:13 +0100
> From: Iain Young <iain@g7iii.net>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] RFX-2400 - Band Pass Filter
> Message-ID: <02568f52-a7b4-df86-101e-eaec26cfed9b@g7iii.net>
> Content-Type: text/plain; charset=utf-8; format=flowed
>
> Hi Guys,
>
> Another long shot from me, and yes, again it's hardware that's EOL
> and "Not recommended for new designs", but it happens to be perfect
> for my needs (a 13cm Amateur Radio Beacon if anyone is remotely
> interested!)
>
> Anyhow, I have the opportunity to acquire a RFX2400. I understand the
> RFX2400 has a Band Pass filter that covers 2400 and 2483. Obviously
> for 2320 this is unwanted, but I understand that it "can easily be
> bypassed"
>
> I can see it on the schematic. Looking at the schematic though, it
> looks like this might need to be a hardware mod ? by cutting the
> tracks that go from pin 3 of U202 to the SAW Filter ? Or shorting
> pins 2 and 5 of the SAW filter ?
>
> That said, Pin 5 of U202 suggests a software method might be available.
> Anyone know for sure ? And if it's software, how, especially from within
> GRC ? I'd really rather not have to start butchering things if at all
> possible!
>
>
> Thanks and Best Regards
>
> Iain
>
>
>
>
> ------------------------------
>
> Message: 7
> Date: Thu, 8 Aug 2019 09:51:11 -0400
> From: EJ Kreinar <ejkreinar@gmail.com>
> To: Royce Connerley <royceconnerley@yahoo.com>
> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
> Message-ID:
> 	<CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi Royce,
>
> Can you walk me through your use case real quick?
>
> - How many channels?
> - How wide is each channel?
> - Are the channels equally spaced?
>
> The polyphase channelizer in theseus-cores currently has a static number of
> "max channels" that get instantiated.... which is not insignificant. We've
> discussed exposing a build-time parameter that could scale down the max
> number of channels to save some resources, but 1) that hasn't been
> implemented yet and 2) I'm not totally confident it would fit in the e310
> anyway.
>
> But lets think through your scenario and we can discuss where we'd need the
> channelizer to go for it to work... for example, you probably also need the
> FPGA-based channel downselection in the channelizer -- the E310 wont be
> able to return all channels in real time! Or, we could consider other
> approaches -- the DDC channelizer in theseus-cores might be workable if you
> have just small number of channels and you need arbitrary spacing/channel
> widths.
>
> EJ
>
> On Thu, Aug 8, 2019, 8:52 AM Royce Connerley <royceconnerley@yahoo.com>
> wrote:
>
>> EJ:
>>
>> I want to pick a few narrowband channels scattered over about 5 MHz.  I
>> would like to be able to use your channelizer in an E310.  Do you think it
>> could fit in the E310?s FPGA?  When I run uhd_image_builder with just the
>> channelizer and a FIFO, I?m seeing the following errors:
>>
>> ERROR: [Place 30-640] Place Check : This design requires more RAMB36/FIFO
>> cells than are available in the target device. This design requires 324 of
>> such cell types but only 140 compatible sites are available in the target
>> device. Please analyze your synthesis results and constraints to ensure the
>> design is mapped to Xilinx primitives as expected. If so, please consider
>> targeting a larger device.
>> ERROR: [Place 30-640] Place Check : This design requires more RAMB18 and
>> RAMB36/FIFO cells than are available in the target device. This design
>> requires 703 of such cell types but only 280 compatible sites are available
>> in the target device. Please analyze your synthesis results and constraints
>> to ensure the design is mapped to Xilinx primitives as expected. If so,
>> please consider targeting a larger device.
>> ERROR: [Place 30-640] Place Check : This design requires more RAMB36E1
>> cells than are available in the target device. This design requires 324 of
>> such cell types but only 140 compatible sites are available in the target
>> device. Please analyze your synthesis results and constraints to ensure the
>> design is mapped to Xilinx primitives as expected. If so, please consider
>> targeting a larger device.
>>
>> Royce Connerley
>>
>> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>>
>> Hi Royce,
>>
>> Phil and I have been working on the channelizer in the theseus-cores repo
>> here: gitlab.com/theseus-cores/theseus-cores
>>
>> The master branch has a (potentially) working channelizer, at least
>> according to my recent tests on the x310, as long as the network interface
>> supports the desired output rate.
>>
>> There's also an fpga solution for channel downselection in a branch that
>> Phil put together. The ball is in my court to turn the crank and merge to
>> master with supporting software, but I haven't gotten much of a chance
>> recently.
>>
>> If you're interested in testing we could definitely use some more people
>> to give it a shot :D Let me know if you need a sample bitstream or if you
>> can build one yourself.
>>
>> EJ
>>
>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
>>> polyphase channelizer.  Has there been any activity on this?
>>>
>>> Royce Connerley
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:  
> <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190808/1c29a6d3/attachment-0001.html>
>
> ------------------------------
>
> Message: 8
> Date: Thu, 8 Aug 2019 16:21:27 +0200
> From: Sneha vasan <snehabvasan@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Fwd: Varying delay in signal reception
> Message-ID:
> 	<CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> ---------- Forwarded message ---------
> From: Sneha vasan <snehabvasan@gmail.com>
> Date: Thu, Aug 8, 2019 at 2:31 PM
> Subject: Varying delay in signal reception
> To: <usrp-users@lists.ettus.com>
>
>
>
> Hi everyone,
>
> I am transmitting a OFDM modulated random signal padded with zeros which is
> generated from the Matlab. I am transmitting this signal using USRP X310.
> But I am receiving the continuous random signal with the various delays in
> the first burst. This delay in receiving the signal is varying randomly
> with should certainly not happen when the parameters are constant.
>
> In my project I am using a 20cm MIMO Cable to connect TX and RX. Can you
> please tell how I am receive signal with a constant delay at receiver.
>
> Regards,
> Sneha
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:  
> <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190808/4bb9647a/attachment-0001.html>
>
> ------------------------------
>
> Message: 9
> Date: Thu, 08 Aug 2019 10:35:56 -0400
> From: "Michael Dickens" <michael.dickens@ettus.com>
> To: "Sneha vasan" <snehabvasan@gmail.com>, "USRP Users"
> 	<usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Fwd: Varying delay in signal reception
> Message-ID: <162bd826-1815-4880-8ef0-7428078c51a0@www.fastmail.com>
> Content-Type: text/plain; charset="us-ascii"
>
> Hi Sneha - I take it by you forwarding your query without further  
> comment that you didn't receive an answer to it? FYI It would be  
> useful in the future to add such a comment, enquiring politely,  
> before the forwarded part.
>
> So the big question here is how you are generating the signal. You  
> say "MATLAB", but do not supply your code (m-file or siumulink or  
> whatever). There is very little we can do to help you without  
> knowing how the signal is -actually- being generated. Maybe supply  
> at least a snippet of code or a screenshot of the simulink?
>
> There are probably some folks here who use MATLAB with UHD / USRP,  
> so maybe someone on this list will understand you situation. I'd  
> also encourage you to reach out to the MathWorks support, as this  
> might be an area where they know more about the situation more  
> quickly than you'd get here.
>
> Hope this is useful! - MLD
>
> On Thu, Aug 8, 2019, at 10:22 AM, Sneha vasan via USRP-users wrote:
>>
>>
>> ---------- Forwarded message ---------
>> From: *Sneha vasan* <snehabvasan@gmail.com>
>> Date: Thu, Aug 8, 2019 at 2:31 PM
>> Subject: Varying delay in signal reception
>> To: <usrp-users@lists.ettus.com>
>>
>>
>>
>> Hi everyone,
>>
>> I am transmitting a OFDM modulated random signal padded with zeros  
>> which is generated from the Matlab. I am transmitting this signal  
>> using USRP X310. But I am receiving the continuous random signal  
>> with the various delays in the first burst. This delay in receiving  
>> the signal is varying randomly with should certainly not happen  
>> when the parameters are constant.
>>
>> In my project I am using a 20cm MIMO Cable to connect TX and RX.  
>> Can you please tell how I am receive signal with a constant delay  
>> at receiver.
>>
>> Regards,
>> Sneha
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:  
> <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190808/be4dcb68/attachment-0001.html>
>
> ------------------------------
>
> Message: 10
> Date: Thu, 08 Aug 2019 11:13:34 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] RFX-2400 - Band Pass Filter
> Message-ID: <5D4C3C1E.2000704@gmail.com>
> Content-Type: text/plain; charset=windows-1252; format=flowed
>
> On 08/08/2019 09:01 AM, Iain Young via USRP-users wrote:
>> Hi Guys,
>>
>> Another long shot from me, and yes, again it's hardware that's EOL
>> and "Not recommended for new designs", but it happens to be perfect
>> for my needs (a 13cm Amateur Radio Beacon if anyone is remotely
>> interested!)
>>
>> Anyhow, I have the opportunity to acquire a RFX2400. I understand the
>> RFX2400 has a Band Pass filter that covers 2400 and 2483. Obviously
>> for 2320 this is unwanted, but I understand that it "can easily be
>> bypassed"
>>
>> I can see it on the schematic. Looking at the schematic though, it
>> looks like this might need to be a hardware mod ? by cutting the
>> tracks that go from pin 3 of U202 to the SAW Filter ? Or shorting
>> pins 2 and 5 of the SAW filter ?
>>
>> That said, Pin 5 of U202 suggests a software method might be available.
>> Anyone know for sure ? And if it's software, how, especially from within
>> GRC ? I'd really rather not have to start butchering things if at all
>> possible!
>>
>>
>> Thanks and Best Regards
>>
>> Iain
>>
>>
> You'll need to modify the hardware--the RFX-2400 didn't have any
> software support for filter bypass that I know of.
>
>
>
>
>
>
> ------------------------------
>
> Message: 11
> Date: Thu, 08 Aug 2019 11:24:38 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] USRP N200 has sequence error only on
> 	transmission
> Message-ID: <5D4C3EB6.1020405@gmail.com>
> Content-Type: text/plain; charset=windows-1252; format=flowed
>
> On 08/08/2019 06:02 AM, Nico Pfeffer via USRP-users wrote:
>> Hello,
>>
>> For my current problem I also searched through the net and found this
>> one here:
>>
>> http://ettus.80997.x6.nabble.com/USRP-users-Sequence-Errors-N200-td13041.html
>>
>> Somehow, after a lot of communicating and also adapting the steps
>> recommended their, the problem was not solved. So maybe I start with
>> explaining what my problem is and what I have done maybe wrong:
>>
>>
>>
>> I'm observing strange behaviour on transmission with USRP N200 in
>> combination with Daughterboards Basic-Tx and Basic-Rx. First I would
>> like to share some basic information:
>>
>>  Operating System : Ubuntu 18.04LTS (64bit)
>>  Kernel Version   : 4.15.0-55-generic
>>  GnuRadio         : 3.7.11
>>  UHD              : 003.010.003.000
>>  Network-Cards    : Realtek RTL8111/8168/8411 PCI Express Gigabit
>> Ethernet Controller
>>                     Intel I219-LM
>>
>>
>> I was using the following commands for installing uhd and gnuradio:
>>
>>  $ sudo apt install gnuradio
>>  $ sudo apt install uhd-host
>>  $ uhd_images_downloader
>>
>>
>> I'll start with the steps I've done so far:
>>
>>   - using a USRP-N200 REV D (bought in 2016/17) (was working fine on
>> Ubuntu 16.04 LTS, with same network cards)
>>   - upgraded my system to Ubuntu 18.04LTS
>>   - try using my USRP-N200 with this new operating system adn gnuradio
>> (as expected, some compat_num problem)
>>   - then using the command listet by gnuradio console with the
>> specified IP
>>   - when running the uhd_image_loader some happend during the process,
>> because it was not able to
>>     verify the FPGA image
>>   - then reading the section of device recovery from ettus
>>   - I've done the S2 button safe-mode thing and the usrp was found
>> with the default 192.168.10.2 ip address
>>     using uhd_find_devices
>>   - then I retried the uhd_image_loader and it does all steps without
>> problems and I changed the ip
>>     also to another one "192.168.20.2" with usrp2_recovery.py
>>   - after using uhd_find_devices it appers with the new ip
>>   - now I was doing the following:
>>
>> $ ./benchmark_rate --args="type=usrp2,addr=192.168.20.2" --tx_rate
>> 200e3 --rx_rate 200e3 --duration 60
>>
>> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
>>
>>
>> Creating the usrp device with: type=usrp2,addr=192.168.20.2...
>> -- Opening a USRP2/N-Series device...
>> -- Current recv frame size: 1472 bytes
>> -- Current send frame size: 1472 bytes
>> Using Device: Single USRP:
>>   Device: USRP2 / N-Series Device
>>   Mboard 0: N200r4
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: BasicRX (AB)
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: BasicTX (AB)
>>
>> Setting device timestamp to 0...
>> Testing receive rate 0.200000 Msps on 1 channels
>> Testing transmit rate 0.200000 Msps on 1 channels
>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
>>
>> Benchmark rate summary:
>>   Num received samples:    12002270
>>   Num dropped samples:     0
>>   Num overflows detected:  0
>>   Num transmitted samples: 12325665
>>   Num sequence errors:     115
>>   Num underflows detected: 0
>>   Num late commands:       0
>>   Num timeouts:            0
>>
>>
>> Done!
>>
>>
>> As you can see, I've used 200kHz for both sides which is nothing in
>> sense to 5MHz I've used before with the same network card. I was also
>> following the recommendation of net.core.wmem/rmem , user thread
>> priority and ethtool -G options to increase the performances.
>>
>>
>>
>> Best regards, Nico
>>
> Have you applied all the system  updates to you Ubuntu installation?
> Perhaps this is a network card driver issue?
>
>
>
>
>
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 108, Issue 8
> ******************************************




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
