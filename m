Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA4931A6F9
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 22:38:08 +0100 (CET)
Received: from [::1] (port=42326 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAg8a-0002Gi-0I; Fri, 12 Feb 2021 16:38:04 -0500
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:45152)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lAg8W-0002AY-71
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 16:38:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613165838; bh=Ogmd0+09lu0f0tIzoqTjoxYy0qNqKSOTmBBkET73uM4=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=cd08BMEG7nfdSn06745tYOc8kTbALlVsFtJx9DfRWgwu/7pnFRO20IDIV+MQyVxeGE6BL16+rY7QWlf/3UcvcB5xIeqUcdXfcGxHFYR/U3tjr9fg+UnvQK8obmQgUElgx9ya4TXCkXVSaR9K/gbZ4PaW36a5/x6zfdWYKKyBlWVtZGKV+ZMU+oCPwnxc21uZOLvLc863/3WD00ysDOOamNM+HtPvGyR+pBz5cqzMxKLjtITakrLy/uy9a4zhO3TsZ0E0dhrDXqSQ0MCWjHHUt8SDZsFlMZ/IxYcgDPUyyoGPpSiFmBxShm0gaQP4uUVAzWfc4unmVUzWKjvyjqcpGw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613165838; bh=6SwUAAikem9sxB4fl4V0818mhZhAjUMwauqyLjqSWT8=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=akMjScCr/KbJtGHHXJdIsQwO3W7oAWHLCP+ngxqSxRw1f9pvBPQJvSWrdTbraGTgHIlN6EDSsPpeaM7C2Lkaq/hl1KLQHeuIAVDy4QmA643dmlBxq18ELQpHCHlzFNRHwemMkMKdQC7mjjLjd7CXClllwT49zYnQbFyzlRbys8ldxfs1BW2j9g1j3/w+szht297IUPLwZFm4QI0gpdrEFzni+b2HFXxWIMssB3QXD8epH1XshvVaL4LvkcOeDCL+Q6hqWVJ9Eo/4NHnvCH3ra67GMIXsn8NBWB8cngcVt4xTGAl3gA/9iZAVaZ1jylz88TFsDHoulzrNk3z2cdkYQg==
X-YMail-OSG: XVDIEYcVM1k5O6JJMZy_J_1oIyVMJLyw.J0OqLIiEgnv4XqmDYEZoXhWATYX9bw
 Q8oK6mFSlYfpi3jOsQDNKlsCpDfMbzC2Ht9l4idOncHXg7SITIrJmBoDmDEN43DxeZFIIOh04jJW
 ALLaqjYujcGSw_oIQ3YxQfr2whWxXE4CZ2KVQhmSVf0QcREmZryDNZsGn.ZCSDrVrIMQ_uf_nkD3
 dOrLPYO41jImOMyqcJheA58RpMf.Rfi2.MDpyHVD5ZhU3SKPIvQGGj7GBtxvtA1DxcYLkCJXMG3l
 _MAMAIwhmdCx7.7_ibe77fdX1WuTQ3ikDSW6GfFdp0M3aS6wEDPAIMiRSg47oBCj2aFtJ4SzxjHz
 8UayxO6v9HhWKiw3rtEHr3XVC8lD3mEMmtQr2LborgEd_Zz91wqfZC2p3OHnMEgC5TvBEo2qwMCE
 8sZskUh72yxxLhg_8b9fCymRyr9zqBsn9t28w6XVIqWMKwmfIeAKWSgGb6gOSW_To7Wo5PQ13wJf
 Xza0buaHIaYzPoVrTzw5odxvB9eJzuftCQij48RxfjndsXy7y8WUf_QzFvRQS27aMA9yl1GCKB.e
 5SSDJl5vQQ5z.8.0ra1CWmnoaQZ2rcPL4O3GcoH4I82czdGbIwEzs24Sp6cMxOr1Jm1uTGxOzDE9
 5KfxII0GSDtrVhJpcSnvSwlI_00cumzbSU6WSdwYM6o_auu.Ao39J_2l02tDZlBvEz0IYYjXx8vu
 dXHHyoAPipglc9i9mEg6y7q7IA.CEoMPWHJ7B7buZYk.n9cSdRXPwJ6illnzc82upLtN0NQsr4XA
 jmkPOPcrBYzKHIhw8Zv1JGZ.vY9tbh0_fqboDPMaoRL_VF_t7fWUeIsPcWgkQRNLmCUqXwPs09ZG
 x2gXiKFlcJfdrTgTaL5SsER1CYN_B0d1LNv3I2Ck3AF3auhGBudxgxciTQTQ._huBErfaMBt4eJ5
 fQHdGrF5HytchbfkeHYkThaphRWa5kxGP8NWO_WI3meh0VRy.9P.CxKt4ziFnPzfk0pi3N73xZUn
 Wol1dMjRWwzTRSLPiwc8C66.iWgMe3JfGqkpXT91kgLiGg8.OhXRALy4gl_zFTfdpqECzR0bJnXL
 9iEby7pcjh_pNg8.Sz0sGUMUZt8MVYrtqm6t_QxC6aOiMk2r0BqJx0hvlxEGhwYfnumWdauoz6WE
 ZR16t3bGo797iYj.A4UEAJ2Hdl2Qx4zZzbmvkfPB_xwuGXAN1AqlTyufs1KaRRrAR0RuhaTuE_09
 pLMQ8HsVEm6l72R0UTZA7iYgJphYJih0.sIHTdu.BQBZ_SvEr2aCtrsLL5fQKstJp4gN0Ikl86TC
 aw6Bwu.Lq8YRxT1ID1v5aAS1oMWpn_wnlwhV6thYU6Kom_JPTA9J2iZMs.oTrGAS_DtbwxvgIGGw
 0n1i8U3ZgyjV2WNbvAPdF8zxOy0ZEFIGr0MooWxJ6JGBQzmAwB7y5.7oaqdLWFFefvMyMMAm.vPE
 C3CzxO9YlZvE5N83jUPwbDPX3hEUW2lYoyUxHGCOP9AV2HPSLWXimjUbE59E6dgaa74RroBbiN8Y
 r6GLJ0WWwGSQDZrshXFcrb.szTmRPjpku1A7Iy01S15N_iQJo6VONU5y6H2tLtf7eeR2I8UblRdN
 QvpbN95vEEAyyqUq_h0wDpR1N9nEvMegiddZ0utGP.t83noka0me1W1ay3nBIM_rMmQLtY7qCAJx
 j53Sd_8qZ.rvHIcAjGlh8ucoAdwtTfBzXNcJL6rhrvjItjrT6H0CT6BduA89W0y_EJ4Y3gYEd.5q
 nfBKKqP4rTQ7gwruewlpKaD_Zx_gyEz2K.BpCsl1GCLUPyNUpWRUN2TC2oeIdbzmj7BJ5sXxYug7
 WIkG_D0cpRCv89M0aDxqAtbJobuWW1ZnmJSvhvzFb_dcXawMZbQM3V1vWQVQxD6gV3q5naSYRSL.
 c2wLYgLke8OuAwQ4X_s7Nqxp1m0BPhfD8ErueQKGQjKKCXIAIkP.5bSLyvBAIVgACg5Qjbf0a8TI
 lBy.RvfpxKCJ.RU4qGhMh2aCRXp.HSxuc9LmYieEKApRnI3YPKb7KLaI6Zo0G4RoW4elLR76zNZq
 c4JGufuEM_iawjg.uJbDGE2LRrili36jQmfx44ewMZ6s0PMYKeU8uUv_zo5NhLE60oFUNj.Ow9C3
 dSObV9.fMMLce7l7JqEBi.jmtYx3rFFsFQzrL0Vn3qlt.jdd8I6yF0Z9FX7xZU2p1xvMbZ1QBGsM
 A9WLg7QrbV_7OUgBeQDjYobnxCil1f_luw26ffKSBld4rZmdVNnOD50o3uFxMGLJatfpNSPhicD0
 bw2YYR9y4veqqXwRDtmfWL4Y4brOTRT0P1FHg_243YyTM.wYGwCvIiFIEG.r6C3n1jFP3l0ie8_b
 Yq5obqN5ECA--
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Feb 2021 21:37:18 +0000
Received: by smtp414.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 9dd32ff6b572ec5f5245837d327b1f4a; 
 Fri, 12 Feb 2021 21:37:13 +0000 (UTC)
To: usrp-users@lists.ettus.com
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
 <LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <9bc9093f-444f-453c-6fe0-5ccf05b570be@verizon.net>
Message-ID: <1b9cf52b-6554-b066-f217-29f59ac2f14b@verizon.net>
Date: Fri, 12 Feb 2021 16:37:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9bc9093f-444f-453c-6fe0-5ccf05b570be@verizon.net>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] RFNoC OTT Block on E320
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============1784336327099193241=="
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

This is a multi-part message in MIME format.
--===============1784336327099193241==
Content-Type: multipart/alternative;
 boundary="------------2E29A3ADD0DDBA56CBD262F5"
Content-Language: en-US
Content-Length: 23670

This is a multi-part message in MIME format.
--------------2E29A3ADD0DDBA56CBD262F5
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Mark,

I looked at the capabilities of the E320 compared to the E310 and I 
understand your comment about "embedded mode" now.� My experience is 
strictly with the E310.� I didn't realize the E320 had an SFP+ interface 
that allows you to stream sample data back to the host at a much higher 
rate than the embedded ARM core can process.� So, it seems like you 
should be able to update the FPGA on the E320 and stream the data into 
your host machine bypassing the internal ARM processor.� Still, it seems 
that you need to install the the new RFNoC module onto the E320 so that 
it knows what each block in the FPGA is when you run uhd_usrp_probe (you 
were seeing the block named simply Block #0).

And if you can stream data directly to the host then you shouldn't be 
seeing the same error I'm having (running on the embedded ARM).� You 
should be able to run directly on the host. If you are trying to run on 
the embedded ARM then you will have to follow the steps I outlined below 
for cross-compiling.

Meanwhile, I'd like to hear a response from one of the Ettus guys 
because I'm sure I'm off base in a couple areas.� Like, my RFNoC stuff 
is not working so clearly I'm doing something wrong.� But, I'm hoping 
just talking it out will reveal where the errors are.

Mike

On 2/12/21 11:46 AM, Mike via USRP-users wrote:
>
> Mark,
>
> I'm not sure I understand what you mean by "embedded mode".� That 
> may be a term used for other Ettus devices like X310 or N310.� Let 
> me describe what I think the E3xx GNU Radio universe looks like.
>
> In addition to the Ettus E310, I have a Lime Mini device that connects 
> directly to the host computer via USB3.0.� Any GNU Radio program 
> that I make (usually gnuradio-companion) runs directly on the host 
> computer (my laptop with Ubuntu 18.04LTS) and directly processes the 
> raw samples from the radio. Ettus X310 and N310 type devices would 
> transfer raw samples from the radio via 10GigE type interfaces for 
> similar processing on the host computer.� Note, no local software 
> processing on the USRP device.� FPGA processing, yes; but software 
> processing, no.
>
> In contrast to that, the E310 has an embedded ARM processor that 
> executes a python script (usually output from GRC).� Obviously, this 
> needs to run in non-gui mode which is controlled by the "Options" 
> block in your GRC flow graph (set to No GUI).� Similar to the host 
> computer running with the Lime Mini (for example), the ARM processor 
> can process the raw samples from the radio.� However, since the ARM 
> processor is relatively low powered it cannot process "raw" samples at 
> a very high rate.� Therefore it requires the FPGA (RFNoC) to handle 
> as much of the raw data processing as possible.� So, the host 
> computer is used to generate the FPGA bit file (using Xilinx, Vivado) 
> as well as any software modules (OOT) that need to be run on the 
> ARM.� This is where the cross-compiling comes in.� The host 
> computer has to compile the code that is going to eventually execute 
> on the ARM.� After the cross-compilation is complete you need to 
> move your newly compiled module over to the E3xx.� This is where I 
> use sshfs so that I can "make install DESTDIR=..." into a location 
> that is temporarily visible within the E3xx device.� Eventually you 
> will copy this data to the flash card on your E3xx device so that your 
> application can be available at any time (running totally disconnected 
> from any host computer).
>
> So, using the E3xx devices are a little more complex because you have 
> to navigate the cross-compiling aspect and rely on the FPGA to handle 
> the higher bandwidth data processing.� Thus the reason why I'm 
> anxious to fix an issue with the ARM executing a GRC flow-graph that 
> contains an OOT RFNoC module.� It's hard to make the E3xx do 
> anything reasonable without the FPGA performing as much work as possible.
>
> Anyway, hope that helped clear things up a little,
>
> Mike
>
> On 2/12/21 10:32 AM, Mark D wrote:
>>
>> Thanks Mike,
>>
>> �
>>
>> I don�t have a much experience of Linux, I�ve just had to look up 
>> what sshfs is, so as you can imagine this is becoming a very steep 
>> learning curve for me.
>>
>> �
>>
>> After reading your reply and doing a bit of research I�ve found 
>> AN-315 �Software Development on the E3xx USRP� which goes through 
>> the cross-compiling process. Unfortunately it looks like this was 
>> written for UHD 3.14.1. so there may be some differences for 4.0.
>>
>> �
>>
>> I did initially think that as I wasn�t using the USRP in 
>> �embedded mode� then the firmware on the unit wouldn�t need to 
>> be updated, and the RFNoC would be more or less configured via the 
>> host computer. Seems that this isn�t the case.
>>
>> �
>>
>> Mark
>>
>> �
>>
>> *From:*USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of 
>> *Mike via USRP-users
>> *Sent:* 12 February 2021 13:40
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] RFNoC OTT Block on E320
>>
>> �
>>
>> Mark,
>>
>> For uhd_usrp_probe to correctly read your fpga block module you need 
>> to update the XML file in your RFNOC-module/rfnoc/blocks 
>> directory.� Then you need to cross-compile your module like you 
>> would with gr-ettus and install it on the E320.� I use sshfs to 
>> cross-compile on the host and make it immediately available on my E310.
>>
>> It may be that the process on UHD4 is slightly different but that is 
>> what I do to make the correct name of my new block show up in 
>> uhd_usrp_probe.
>>
>> I still have the python "attribute error" so hopefully now that two 
>> people are seeing this on both UHD3.15 and UHD4.0 we can get to the 
>> bottom of it.
>>
>> Mike
>>
>> On 2/12/21 6:52 AM, Mark D via USRP-users wrote:
>>
>>     Hi,
>>
>>     �
>>
>>     I�m trying to add an OTT block into the FPGA for an E320. I�m
>>     using version 4.0.0 of the UHD.
>>
>>     �
>>
>>     So far I�ve used rfnocmodtool to create the OOT folder
>>     structure and add my new block. My initial plan was to add this
>>     block as per the default code generated that just passes data
>>     through. I wanted see that this was instantiated into the FPGA
>>     and the system still worked before starting to add my own code.
>>
>>     �
>>
>>     I�ve been following the �Getting Started with RFNoC in UHD
>>     4.0� page on the Ettus website and also the Youtube video
>>     �RFNoC 4 Workshop - GRCon 2020�. The .yml file I�ve created
>>     connects the OTT block between the radio Rx and stream endpoint
>>     (I�ve removed the DDC / DUC and already had the FPGA working
>>     without these).
>>
>>     �
>>
>>     So far I�ve got the FPGA built and uploaded to the FPGA.
>>     Uhd_usrp_probe shows that the RFNoC routing as expected, but the
>>     name of OTT block has been replaced with Block#0. The OOT project
>>     appears as a folder in GNU radio with the new block available to
>>     be dragged into the project.
>>
>>     �
>>
>>     I think the issues I�m now having are similar to those reported
>>     recently by Mike with the E310. Trying to run a GNU radio project
>>     results in the error � AttributeError: module �Dilbert�
>>     object has no attribute 'dogbert'�
>>
>>     �
>>
>>     The examples I�m following are all based around the X310, is
>>     there an extra step required for the E3xx USRPs to update the
>>     firmware running on the device so that it�s aware of the new
>>     block type? If so I�ve no idea how I would go about this.
>>
>>     �
>>
>>     Any help on this would be much appreciated,
>>
>>     �
>>
>>     Mark
>>
>>     ------------------------------------------------------------------------
>>
>>     This email and any files transmitted with it are confidential and
>>     intended solely for the use of the individual or entity to whom
>>     they are addressed. If you have received this email in error
>>     please notify the system manager.
>>
>>     _______________________________________________
>>
>>     USRP-users mailing list
>>
>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------2E29A3ADD0DDBA56CBD262F5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>Mark,</p>
    <p>I looked at the capabilities of the E320 compared to the E310 and
      I understand your comment about "embedded mode" now.� My
      experience is strictly with the E310.� I didn't realize the E320
      had an SFP+ interface that allows you to stream sample data back
      to the host at a much higher rate than the embedded ARM core can
      process.� So, it seems like you should be able to update the FPGA
      on the E320 and stream the data into your host machine bypassing
      the internal ARM processor.� Still, it seems that you need to
      install the the new RFNoC module onto the E320 so that it knows
      what each block in the FPGA is when you run uhd_usrp_probe (you
      were seeing the block named simply Block #0).</p>
    <p>And if you can stream data directly to the host then you
      shouldn't be seeing the same error I'm having (running on the
      embedded ARM).� You should be able to run directly on the host.�
      If you are trying to run on the embedded ARM then you will have to
      follow the steps I outlined below for cross-compiling.</p>
    <p>Meanwhile, I'd like to hear a response from one of the Ettus guys
      because I'm sure I'm off base in a couple areas.� Like, my RFNoC
      stuff is not working so clearly I'm doing something wrong.� But,
      I'm hoping just talking it out will reveal where the errors are.</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 2/12/21 11:46 AM, Mike via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:9bc9093f-444f-453c-6fe0-5ccf05b570be@verizon.net">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <p>Mark,</p>
      <p>I'm not sure I understand what you mean by "embedded mode".�
        That may be a term used for other Ettus devices like X310 or
        N310.� Let me describe what I think the E3xx GNU Radio
        universe looks like.</p>
      <p>In addition to the Ettus E310, I have a Lime Mini device that
        connects directly to the host computer via USB3.0.� Any GNU
        Radio program that I make (usually gnuradio-companion) runs
        directly on the host computer (my laptop with Ubuntu 18.04LTS)
        and directly processes the raw samples from the radio. Ettus
        X310 and N310 type devices would transfer raw samples from the
        radio via 10GigE type interfaces for similar processing on the
        host computer.� Note, no local software processing on the USRP
        device.� FPGA processing, yes; but software processing, no.<br>
      </p>
      <p>In contrast to that, the E310 has an embedded ARM processor
        that executes a python script (usually output from GRC).�
        Obviously, this needs to run in non-gui mode which is controlled
        by the "Options" block in your GRC flow graph (set to No
        GUI).� Similar to the host computer running with the Lime Mini
        (for example), the ARM processor can process the raw samples
        from the radio.� However, since the ARM processor is
        relatively low powered it cannot process "raw" samples at a very
        high rate.� Therefore it requires the FPGA (RFNoC) to handle
        as much of the raw data processing as possible.� So, the host
        computer is used to generate the FPGA bit file (using Xilinx,
        Vivado) as well as any software modules (OOT) that need to be
        run on the ARM.� This is where the cross-compiling comes
        in.� The host computer has to compile the code that is going
        to eventually execute on the ARM.� After the cross-compilation
        is complete you need to move your newly compiled module over to
        the E3xx.� This is where I use sshfs so that I can "make
        install DESTDIR=..." into a location that is temporarily visible
        within the E3xx device.� Eventually you will copy this data to
        the flash card on your E3xx device so that your application can
        be available at any time (running totally disconnected from any
        host computer).</p>
      <p>So, using the E3xx devices are a little more complex because
        you have to navigate the cross-compiling aspect and rely on the
        FPGA to handle the higher bandwidth data processing.� Thus the
        reason why I'm anxious to fix an issue with the ARM executing a
        GRC flow-graph that contains an OOT RFNoC module.� It's hard
        to make the E3xx do anything reasonable without the FPGA
        performing as much work as possible.</p>
      <p>Anyway, hope that helped clear things up a little,</p>
      <p>Mike<br>
      </p>
      <div class="moz-cite-prefix">On 2/12/21 10:32 AM, Mark D wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM">
        <meta http-equiv="Content-Type" content="text/html;
          charset=windows-1252">
        <meta name="Generator" content="Microsoft Word 15 (filtered
          medium)">
        <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
        <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:EN-GB;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:EN-US;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
        <div class="WordSection1">
          <p class="MsoNormal">Thanks Mike,<o:p></o:p></p>
          <p class="MsoNormal"><o:p>�</o:p></p>
          <p class="MsoNormal">I don�t have a much experience of
            Linux, I�ve just had to look up what sshfs is, so as you
            can imagine this is becoming a very steep learning curve for
            me. <o:p></o:p></p>
          <p class="MsoNormal"><o:p>�</o:p></p>
          <p class="MsoNormal">After reading your reply and doing a bit
            of research I�ve found AN-315 �Software Development on
            the E3xx USRP� which goes through the cross-compiling
            process. Unfortunately it looks like this was written for
            UHD 3.14.1. so there may be some differences for 4.0.<o:p></o:p></p>
          <p class="MsoNormal"><o:p>�</o:p></p>
          <p class="MsoNormal">I did initially think that as I wasn�t
            using the USRP in �embedded mode� then the firmware on
            the unit wouldn�t need to be updated, and the RFNoC would
            be more or less configured via the host computer. Seems that
            this isn�t the case.<o:p></o:p></p>
          <p class="MsoNormal"><o:p>�</o:p></p>
          <p class="MsoNormal">Mark<o:p></o:p></p>
          <p class="MsoNormal"><o:p>�</o:p></p>
          <div>
            <div style="border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class="MsoNormal"><b><span
                    style="mso-fareast-language:EN-GB" lang="EN-US">From:</span></b><span
                  style="mso-fareast-language:EN-GB" lang="EN-US">
                  USRP-users <a class="moz-txt-link-rfc2396E"
                    href="mailto:usrp-users-bounces@lists.ettus.com"
                    moz-do-not-send="true">&lt;usrp-users-bounces@lists.ettus.com&gt;</a>
                  <b>On Behalf Of </b>Mike via USRP-users<br>
                  <b>Sent:</b> 12 February 2021 13:40<br>
                  <b>To:</b> <a class="moz-txt-link-abbreviated"
                    href="mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on
                  E320<o:p></o:p></span></p>
            </div>
          </div>
          <p class="MsoNormal"><o:p>�</o:p></p>
          <p>Mark,<span style="mso-fareast-language:EN-GB"><o:p></o:p></span></p>
          <p>For uhd_usrp_probe to correctly read your fpga block module
            you need to update the XML file in your
            RFNOC-module/rfnoc/blocks directory.� Then you need to
            cross-compile your module like you would with gr-ettus and
            install it on the E320.� I use sshfs to cross-compile on
            the host and make it immediately available on my E310.<o:p></o:p></p>
          <p>It may be that the process on UHD4 is slightly different
            but that is what I do to make the correct name of my new
            block show up in uhd_usrp_probe.<o:p></o:p></p>
          <p>I still have the python "attribute error" so hopefully now
            that two people are seeing this on both UHD3.15 and UHD4.0
            we can get to the bottom of it.<o:p></o:p></p>
          <p>Mike<o:p></o:p></p>
          <div>
            <p class="MsoNormal">On 2/12/21 6:52 AM, Mark D via
              USRP-users wrote:<o:p></o:p></p>
          </div>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <p class="MsoNormal">Hi,<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">I�m trying to add an OTT block into
              the FPGA for an E320. I�m using version 4.0.0 of the
              UHD.<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">So far I�ve used rfnocmodtool to
              create the OOT folder structure and add my new block. My
              initial plan was to add this block as per the default code
              generated that just passes data through. I wanted see that
              this was instantiated into the FPGA and the system still
              worked before starting to add my own code.<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">I�ve been following the �Getting
              Started with RFNoC in UHD 4.0� page on the Ettus website
              and also the Youtube video �RFNoC 4 Workshop - GRCon
              2020�. The .yml file I�ve created connects the OTT
              block between the radio Rx and stream endpoint (I�ve
              removed the DDC / DUC and already had the FPGA working
              without these).<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">So far I�ve got the FPGA built and
              uploaded to the FPGA. Uhd_usrp_probe shows that the RFNoC
              routing as expected, but the name of OTT block has been
              replaced with Block#0. The OOT project appears as a folder
              in GNU radio with the new block available to be dragged
              into the project.<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">I think the issues I�m now having are
              similar to those reported recently by Mike with the E310.
              Trying to run a GNU radio project results in the error �
              AttributeError: module �Dilbert� object has no
              attribute 'dogbert'�<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">The examples I�m following are all
              based around the X310, is there an extra step required for
              the E3xx USRPs to update the firmware running on the
              device so that it�s aware of the new block type? If so
              I�ve no idea how I would go about this.<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">Any help on this would be much
              appreciated,<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">Mark<o:p></o:p></p>
            <div class="MsoNormal" style="text-align:center"
              align="center"><span style="mso-fareast-language:EN-GB">
                <hr width="100%" size="2" align="center"> </span></div>
            <p class="MsoNormal"><span
                style="mso-fareast-language:EN-GB">This email and any
                files transmitted with it are confidential and intended
                solely for the use of the individual or entity to whom
                they are addressed. If you have received this email in
                error please notify the system manager. <br>
                <br>
                <o:p></o:p></span></p>
            <pre>_______________________________________________<o:p></o:p></pre>
            <pre>USRP-users mailing list<o:p></o:p></pre>
            <pre><a href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
        </div>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------2E29A3ADD0DDBA56CBD262F5--


--===============1784336327099193241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1784336327099193241==--

