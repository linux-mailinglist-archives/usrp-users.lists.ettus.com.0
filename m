Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DE6A9F0F
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 12:00:39 +0200 (CEST)
Received: from [::1] (port=48156 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5oZB-0003fp-Ja; Thu, 05 Sep 2019 06:00:37 -0400
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:60608
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1i5oZ5-0003Hq-CW
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 06:00:31 -0400
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 x859xn2Y027998
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 5 Sep 2019 11:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1567677589;
 bh=dxL61okr8HgWzHxO9gCLR6+tbAjXCuMMY52awzqS5aQ=;
 h=In-Reply-To:References:Date:Subject:From:To:Reply-To;
 b=IZug0Go80drOgXb7iBRKBb5axpANAIQnKQH8BxYwRnrmUcHdM6/xb2KcxHKeDGc8Q
 bpVqrcCbCxra7iAwr9UZM9o3rqKrVMfPFENLu21SimM+sVDffCs4aLBu42bd3nCjRC
 gfHgPd/xy57rfLOFqGL+jximCac6ASU+3blbpGl8=
Received: from 129.217.182.66 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Thu, 5 Sep 2019 11:59:47 +0200
Message-ID: <6434ffb8dd87ff40017f8fec9624ed84.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <81931980771deb10401c18f559b8e445.squirrel@webmail.tu-dortmund.de>
References: <022046f63a5723c6851aee45d88103b2.squirrel@webmail.tu-dortmund.de>
 <CACSOXP13AaQBSCckyLV7tDn6w6DcCOfKaLLHoO570qBqhyzdsQ@mail.gmail.com>
 <81931980771deb10401c18f559b8e445.squirrel@webmail.tu-dortmund.de>
Date: Thu, 5 Sep 2019 11:59:47 +0200
To: "Ettus Research Support" <support@ettus.com>,
 "Usrp Liste" <usrp-users@lists.ettus.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Re: [USRP-users] Phase Sync between to UBX-160 Daugtherboards using
 RFNoC Radio
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
From: Felix Greiwe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: felix.greiwe@tu-dortmund.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hello together,

I wanted to give you a short update about phase-synchronizing my
USRPx310's ubx160 daugtherboards and clarify the problem I am facing for
better understandig.

I am using both TX-Ports of my USRP to transmit the same complex cosine
generated with GNU-Radio. My image is a custom RFNoC image and contains
2xDDC, 2xDUC, 2xRadio,1xDMA-FIFO,1xAddsub and 2xFIFO. My center frequency
is 2.45 GHz and the frequency of the cosine is 100 KHz.

My flowgraph looks like this,

SigSource--->RFNoC_FIFO_0--->DMA_FIFO--->RFNoC-DUC_0-->RFNoC_Radio_A
         |                |          |
         -->RFNoC_FIFO_1---          --->RFNoC_DUC_1-->RFNoC_Radio_B

and both antenna outputs are connected to an Agilent infiniium oscilloscope.
Thus I can measure the phase offset between both of my output ports, by
measuring the phase offset of both displayed cosines. My goal is to
receive the same/almost the same relative phase offset with each new
restart of the flowgraph. Sadly, using the RFNoC blocks, I get a different
phase offset every time.

When I use UHD-USRP Sink instead, (with the same Image and without RFNoC
blocks) I do get a consistent phase offset between both ports with every
restart of the flowgraph or even power cycles. This is the behaviour I
want for my RFNoC Flowgraph as well; and because it is the same image, I
am pretty sure there just must be a way to clone this behaviour to the
RFNoC realm as well.

My approach up till now was, to use timed commands in my GRC-generated
python code for both RFnoC-Radio Blocks A and B, which each represent one
daugtherboard, I think. I then put the .set_tx_freq commands in the code
betweeen set_command time and clear_command time:

  #A.get_time_now equals B.get_time_now
  cmd_time = self.sender_A.get_time_now() + uhd.time_spec_t(0.1)
  self.sender_A.set_command_time(cmd_time)
  self.sender_B.set_command_time(cmd_time)
  ----
  Tuning Commands
  self.sender_A.set_tx_freq(c_freq, i)
  self.sender_B.set_tx_freq(c_freq, i)
  ---

  self.sender_A.clear_command_time(0)
  self.sender_B.clear_command_time(0)
  # End Timed Commands

This approach however did not work for me.

After my attempt with the timed commands failed, I tried to change all
paramters. When I set the frequency of my cosine to zero I actually got a
consistent phase offset. My conclusion is, that the mixers lock with a
consistent relative phase offset every time, because DC Signals do not
have relative phases. Because of that I think that maybe really both
Radio-Blocks start streaming with a random time offset or something
similar.

Now to my questions

1) Is using the timed commands really the way to go? Remember I do NOT
want to synchronize multiple USRP-Devices but only that both
D-Boards/Radio-Blocks of one device, lock with the same relative phase.

2) Do I have to start the streaming manually somehow, with a timestamp or
something similar? And when the answer is yes, how do I do it in python
without the multi_usrp_api?

3) How can I control the start of streaming in my python code so that both
RFNoC Radios start at the same time?

4) How does the UHD_USRP_Sink Block work? I mean is there a verilog code
for it too and does it call the rfnoc_radio and rfnoc_duc modules etc.?
What are the parameters for the UHD_USRP_Sink Blocks DMA_FIFO and DUC?
I am asking this because I would like to clone that blocks behaviour

5) Any other question that I am not smart enough to ask but that deserves
an answer either way :D

Again, any help is greatly appreciated because the synchronisation of both
TX-paths with RFnoC is crucial for my project and I can not work around
this issue.

Best regard and thank you for reading

Felix


> Hey Sam,
>
> thank you for your answer. Is your suggested [1] really useful for the
> RFNoC Radio Blocks I am using? I think I only can use the commands from
> path/include/ettus/rfnoc_radio.h, because the RFNoC_Radio Blocks are not
> derived from usrp_block. (As far as I know)
>
> I then tried the timed commands and modified them a little because I have
> to use two rfnoc_radio_blocks, one for each dboard which I sadly can not
> tune together. My thoughtprocess is, to tune the daugtherbaords in the
> initiantion process, before they lock in the wrong phase. Here is the code
> I modified (With sender_A and sender_B beeing my two RFNoC Radio Blocks
> which each represent one daugtherboard from the same USRP):
>
>         # Radio B
>         self.sender_B = ettus.rfnoc_radio(
>             self.device3,
>             uhd.stream_args( # Tx Stream Args
>                 cpu_format="fc32",
>                 otw_format="sc16",
>         	args='(cpu="fc32", otw="sc16")',
>             ),
>             uhd.stream_args( # Rx Stream Args
>                 cpu_format="fc32",
>                 otw_format="sc16",
>                 args="", # empty
>             ),
>             1, -1
>         )
>         #Ende Radio B
>         # Radio A
>         self.sender_A = ettus.rfnoc_radio(
>             self.device3,
>             uhd.stream_args( # Tx Stream Args
>                 cpu_format="fc32",
>                 otw_format="sc16",
>         	args='(cpu="fc32", otw="sc16")',
>             ),
>             uhd.stream_args( # Rx Stream Args
>                 cpu_format="fc32",
>                 otw_format="sc16",
>                 args="", # empty
>             ),
>             0, -1
>         )
>         # Ende Radio A
>
>         # Timed Stuff
>         #------------------------------------------------------------------
>         last_pps_time = self.sender_A.get_time_last_pps()
>         while last_pps_time == self.sender_A.get_time_last_pps():
>             print("waiting...")
>         self.sender_A.set_time_next_pps(uhd.time_spec_t(0.0))
>         self.sender_B.set_time_next_pps(uhd.time_spec_t(0.0))
>         #time.sleep(1)
>
>         self.cmd_time = self.sender_A.get_time_now() +
> uhd.time_spec_t(0.1)
>         self.sender_A.set_command_time(self.cmd_time,0)
>         self.sender_B.set_command_time(self.cmd_time,0)
>         #------------------------------------------------------------------
>
>         self.sender_A.set_rate(usrp_rate)
>         for i in xrange(1):
>             self.sender_A.set_tx_freq(c_freq, i)
>             self.sender_B.set_tx_freq(c_freq, i)
>             self.sender_A.set_tx_gain(0, i)
>             self.sender_A.set_tx_dc_offset(True, i)
>
>         self.sender_A.set_tx_antenna("TX/RX", 0)
>
>         self.sender_A.set_clock_source("internal")
>
>
>         self.sender_B.set_rate(usrp_rate)
>         for i in xrange(1):
>             #self.sender_B.set_tx_freq(c_freq, i)
>             self.sender_B.set_tx_gain(0, i)
>             self.sender_B.set_tx_dc_offset(True, i)
>
>         self.sender_B.set_tx_antenna("TX/RX", 0)
>
>         self.sender_B.set_clock_source("internal")
>         #----------------------------------
>         self.sender_A.clear_command_time(0)
>         self.sender_B.clear_command_time(0)
>         #----------------------------------
>         # Ende Timed Stuff
>
> The edited Code does not throw errors but doesn't solve my problem either
> because with each new start of the flowgraph, there is still a different
> phase offset. Do I maybe missed instructions in the Initiation process,
> that have to be timed also to achieve phase sync? Or maybe its something
> about the DUC Blocks?
>
> I think the code is not all wrong, because when I use it in my set_c_freq
> method below for my qtrange_slider the phase seems to be constant with
> each retune. Just still not with each restart of the flowgraph sadly.
>
> def set_c_freq(self, c_freq):
>         last_pps_time = self.sender_A.get_time_last_pps()
>         while last_pps_time == self.sender_A.get_time_last_pps():
>             print("waiting...")
>         self.sender_A.set_time_next_pps(uhd.time_spec_t(0.0))
>         self.sender_B.set_time_next_pps(uhd.time_spec_t(0.0))
>         self.cmd_time = self.sender_A.get_time_now() +
> uhd.time_spec_t(0.1)
>         self.sender_A.set_command_time(self.cmd_time,0)
>         self.sender_B.set_command_time(self.cmd_time,0)
>         #tc start
>         self.c_freq = c_freq
>         for i in xrange(1):
>             self.sender_B.set_tx_freq(self.c_freq, i)
>         for i in xrange(1):
>             self.sender_A.set_tx_freq(self.c_freq, i)
>         #tc ende
>         self.sender_A.clear_command_time(0)
>         self.sender_B.clear_command_time(0)
>
>
> I also read your suggested reading [2] and am not sure if I have to follow
> the commands under Synchronizing Channel Phase. Reason for this, is
> because the rfnoc_radio.h controller does not support the
> issue_stream_command method (it is not listed in controller class
> rfnoc_radio.h). Changing to one single cosine did not solve my problem
> btw.
>
> Another thing that bothers me is, that the article talks about
> synchronising multiple device whereas in my case I only want to sync my
> two daugtherboards of the x310. Is it still the same process? (When I use
> the UHD_USRP_SINK Block with two inputs, the phase seems to be constant
> with each restart even without tuning them with timed commands. This
> behauviour is the goal; only that I want to use RFnoC instead)
>
> Thank you for your help and best regards,
>
> Felix
>
>
>> Hey Felix,
>>
>> Your hunch is correct -- you'll need to use timed commands to issue your
>> tune requests and to initiate streaming. This will involve editing the
>> python script generated by GRC. Here's a relevant GRC manual section
>> [1],
>> and an example snippet of tuning with timed commands in the UHD Manual
>> [2].
>> Doing this correctly should ensure that you are able to keep a
>> consistent
>> phase offset between your TX channels at a given frequency.
>>
>> I'm not sure if it'd actually be an issue, but one thing from your
>> flowgraph struck me. You might want to fork the output of your cosine
>> block
>> so that both TX streams are being fed data from a single source. I don't
>> think this will solve your problem, but if the blocks are doing the same
>> thing, may help take a variable out of the equation.
>>
>> Sam
>>
>> [1]
>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html
>> [2] https://files.ettus.com/manual/page_sync.html#sync_phase_lo
>>
>>
>> On Thu, Aug 29, 2019 at 8:49 AM Felix Greiwe via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello together,
>>>
>>> I am trying to transmit one complex cosine from both TX - Antenna of my
>>> USRP-x310 with two UBX-160 Daugtherboards. I am transmitting a cosine
>>> with
>>> the frequency of 100 kHz and the center frequency of my RFNoC Radio
>>> Blocks
>>> is 2.45 GHz. So basically I see a peak at 2.45 Ghz + 100 kHz at my
>>> spectrum analyzer (plus the lo leakage at 2.45 GHz). Additionally I
>>> receive the spectrum on another x310.
>>>
>>> In the following link you can see my flowgraph in GRC:
>>> https://ibb.co/7W6mTKf
>>>
>>> As you can see i have two multiply blocks to change the phase of the
>>> complex cosines, the value of the multiply blocks are
>>>
>>> > pow(math.e, 1j*phi*(math.pi/180)) and
>>> > pow(math.e, 1j*psi*(math.pi/180)).
>>>
>>> I can change phi and psi with a qt gui range slider. Default value ist
>>> multiplication by 1.
>>>
>>> My goal with this setup was to check the MIMO capabilities of the USRP
>>> x310.
>>> I calculated the Phase offset both transmitted waves should have at the
>>> antenna of my spectrum analyzer. With my multiplication blocks I
>>> created
>>> different phase offsets, thus causing destructive interference at the
>>> receiving end (peak at analyzer is the smallest at this phase).
>>>
>>> However most of the time when I start different runs of my flowgraph
>>> (or
>>> when I power cycle the device) I always have to set a different phase
>>> offset to see the destructive interference. To me it seems pretty
>>> random
>>> which phase offset both transmitting path get even though I don't
>>> understand why.
>>>
>>> In another thread I read that maybe timed tuning will work for me but I
>>> did not quite understand what that improves in particular nor who I use
>>> it
>>> in my  GRC generated python file. (Using the RFnoC Radio Blocks does
>>> not
>>> make it easier by the way.) This is the link:
>>>
>>>
>>> http://ettus.80997.x6.nabble.com/USRP-users-use-a-usrp-x310-as-MIMO-transmitter-daughterboard-synchronization-tt11642.html
>>>
>>> Any ideas, suggestions and explanations on how to phase align the
>>> transmit
>>> path of my (single) USRP x310 would be greatly appreciated!
>>>
>>> Best regards
>>>
>>> Felix
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
