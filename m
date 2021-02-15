Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D1C31B9E7
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 14:00:47 +0100 (CET)
Received: from [::1] (port=39220 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBdUZ-0005sI-HO; Mon, 15 Feb 2021 08:00:43 -0500
Received: from sonic305-21.consmr.mail.ne1.yahoo.com ([66.163.185.147]:43743)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lBdUV-0005gl-8T
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 08:00:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613393998; bh=FITTxij9dUn8+0qnJvh+W9kS16W8jb2C7W4JruObKp8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=CzNoG8t0e++abCFS7nt9lc8/a7dzKrYY0IGtCa5Uqz25zjEspyhIyTaeUSdAUmO5a4+X8owH4tBl47XNIGg26WWPNHcmXg7qc+NpDdmlCwg3x0do3LSi5tA0ZW5zzl7TTm8w814RhuFicHkGgieoYBQnxeweSWmOQPLSElwdz3S4FABJP+I6TQiMiv3ZEbxh7VbTM5mzRtRNhqjEGlMNAmm8uHHfOYNopm6az7RG69B0YgbcmlNihCv9Nw6v9r+egOWX+BbGFV2dYLVj4gesCX3c25FK+xVOYKk9p5d66GlbtA8Z+DMLvYkUHm9scHwzN97GHpJMUv3WfOQN8/yuVA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613393998; bh=2IvNAtjmkCG86SZ+8ANdi8+I8FYLjlHjFb/4cNH2q+8=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=tu7yd+wcMa53j47+jlfje4xRcbJQTQClNRhDze5VzrGOtHzBpxrVWAqAnpJMkLrzsl8BuEnbC513TUIVbjicvn7cXDHML8lb4XssZ1cjhCAprGG+TMl0LgLU/QTrVLoBEbVfbtMkJ71+J91UggSud29My55uIbRVu29thy+kq3YbwgUR4b1ODR3QapFFS5/DgY56Gm6DJK7HY3/IN02S0ljwCPg5XIWTZ4YfFatTyOEj7l8Ib1ICTwEx0sOujrak5MWWtJvAhI9pZY966wQYn5hhJpQzAweTcGIDaw7gJsBm1WKPFRS9+x2/LNb2V0iwoICNIVm9dorumICFGgmKcA==
X-YMail-OSG: OsQqAuUVM1kkKI1O3_rgdHCFCtWFE7qSfcO4.spA30Z_yh.k4NaMroPdWNWLSvV
 6FwPsQkzNOLm5v1ai8cOQCm.YcaTVA2e_sHAtwlKnkp2cu9F2nks4_5jP7goZkDh5CdoerD5YovA
 Vy8Vz5QA9Kr.kVLys92EGHSDpbK7X6Ee7xek3LwER50OVUNLiBdt0lCfVUwUBbebOfeeIZAlajqw
 GTDJaryMTsV8mTYlCM.1dzPd6du.dJZBoUdFTsYgoAc_n9YaKWco2lNcv.dliTTXzo.Me1y5Prws
 11Fps_TmJnyz2F1_m4VLHIci.MAdp0wnKN7h3MpvQ8YFKi9aqV3eyFLHSqqJluoNBwXFpT3V1xKF
 fxxqt0DUmqFp7rmaTjw3VFsqNv9dcLv22CZTFY1BAQk.r_yXM1mBQFbDIB.7oQcfTnpQgv7lS0dx
 xag0ug7SmxbnEDZG9rwmNWx1X6NEx3Id8XK2VUAGvnVwjyAA5twxU.T2LARIToDGucIuHVyUIOQx
 K3XHoX0iPSV9hr.GLU3G3AuFjKd7EQLmxCwL9rbOjNOJh6gqT9E4jMTFS3IUapIp6zer8nzQjeuS
 cR_amOgBXm9POkqW2lnRJkx6TI_UOj0x6tyS0t8FEPQAi45bLbqYaqgH6olevtRZAQi241b2Ss0X
 OjF0W4heZQNKbF4br0OFlf3vpRmLU7Fr8f..oJ0MsaCq1MFrI8lju_oZcQvPRAmU7yX.cnXMNlDt
 08pvi3n8bztkAHm5sKllQXhjeH9qTi3Ac_nK7K5JSkvlt72IcfFaEHGjd0pe6KSxwEhpPUEzMkCA
 Wjn_oWgkdzhgw8FKjovTwDz7SJvZ9v9DkY2hqCHfqECMSuSN6u0qVGIRSF2l4bdf5p1QUOl6DDpK
 ineoeF0tak9YXUluempr0bq05VXQmjqi2RKWppGtd5b9ztQhb1mAAMuF738E72J9YEWE5j8zQkvc
 sIrV40JAc7w1ZDr_dueRX2lDUgPKz3e_gKgbnx9J6jHWIImlJIos71ydwLD1ZysLwIIA_fnR_b1V
 IGB4_oCsOAJ1Z9Z1P0Av4eLAFNtz.RW8m7FCvMqBdwVLkxSdbbCHJ8XBYgAaDQ9al9P.m_._27Bb
 0tFkIOT9WZuOJqZRYeVuwpCOTQzxI7MWHNXZtoo2OZzY8aZhDYDMAwwsjPZshvRDC6fPeSNHfduB
 E6p796Ztjdc04F2qckjWKfOIkePsZW_1Hams3AUOniLtdxv8fu9rwdUw2KR.3JCI8oowi2zF5woN
 LScVIv40BGp3O9nWfmV.X.GZEqPhwtP7KuKZK1sBbG._31W0NeIRW1e71H4FdAcVc_SlvKIv3TYM
 18USpBAlF8NqhpRpM.el9Ij8dCcjBxiZGzJk0qn17gkKKcIbRr_6CgJXbn4nP7CmBXVqC8hMe8Z1
 rz.J1r0SP9FCaTxs1fzwcal8c2yNyD7tCFbHFptmVxcOY0wYr9jWRlnMupCzxMqzCA5L.qlrdmMB
 71NWtQ.hwfLPAJpQk3ocHAj32p603IL7cUL2p0Yh4Wf1eRWDbN.aCr77oMSJa.t718GRcFR5f_i4
 pVz7z9DzlbtnhcVAqNZ1cOA5QwuCv1k08ioHFKbayHp_ZuepA2sktW7g7xQ.6ybyJEMCverbKbKz
 WAw8GF8ZvTwNFZXjeR2.MqDJp2tPvwOieB69O_pgJCoT8Hy80tRxEJjjc3uSa0huE8wJOwi5YYQc
 IJ80OfgGBrotjF13.miLZ0rTXDcuzcYJrKpS8nSm9VPKr_TWH29_NpjLcbzt9nJGkMQea.4QQFLZ
 d9o5B_mOfPBnB1ZGubQLSF0Vfh3DVcTCsgWOS2Knscvlnb6LDnqf0P.0FpguexBnhSFiQPkYU67M
 bUrtRsN.ozrMrVBHXj98qYCcZe0HEjmI07sPVknuWZF1houO.Fg2PgcTste6RVGKzyTUVg4Dem3E
 mgDWMm6vAa4OnjeksMj06P3heFR3LGet0i86ClSL9i5qirb7CPrEnIXLzVCXh7Xz0w6aq8MGsWdF
 MMzx18qvAqc26JKy.qZO5cE_t8VPwkRn0MFzNqpHtfOLR3syOpuVOp9kR6Z3LSsYcP3twLFnSK3t
 BDDTsGoWQLvWW4RwyaxXRnt1908yBAt3E3hi9WzTSEk_ButCT9ZhsLlF11hQkeU9Xu41hqsJMsJh
 vhzcdUPQpycTmbTZJFE8lA0IzvQaCpozPlpdK772Cioa.xevp8zqvBzdYL.dip8Z5yl1r4kcohjd
 8nkkQ9QcFLj.CljIxxYvtefCLA6aWpCaL_SX6S_Xl0oxJzZuZGTaEy8dMNxhPwmmwKkV71bl47tn
 K_Y8vvpkujoRs_C.D_KeZt9UD0iWOTRXD4Xqc4MllE1olphWxn6YaSRviallxcFfrPOd9fN600xV
 fg2DhucRZUgi6HVsI4obLVJ1Kh2CraXMZjxODq6GbHoY4aQdffnYRAK0M4Jaz1Q_US1bu3z6pdpe
 klN10SolCcZ8gJPHFy5yXAUPpb4FxLFhGlU4nghvZTcmvMLkRYFzS9Q3eAhXS2g3C4yMJRmFex8C
 7qO6YfCHDRL9ADyar6cco528V342KIt82cyk-
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.ne1.yahoo.com with HTTP; Mon, 15 Feb 2021 12:59:58 +0000
Received: by smtp416.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID ef46b2b9b9f3bcb01be68142758c3357; 
 Mon, 15 Feb 2021 12:59:56 +0000 (UTC)
To: Mark D <md964@hmgcc.gov.uk>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
 <LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <9bc9093f-444f-453c-6fe0-5ccf05b570be@verizon.net>
 <1b9cf52b-6554-b066-f217-29f59ac2f14b@verizon.net>
 <LNXP123MB372488AF5D8D50DFF85E9C90CA889@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Message-ID: <8ef09f02-a99a-c867-eae9-e71710367c5a@verizon.net>
Date: Mon, 15 Feb 2021 07:59:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <LNXP123MB372488AF5D8D50DFF85E9C90CA889@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
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
Content-Type: multipart/mixed; boundary="===============7812187409667224775=="
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
--===============7812187409667224775==
Content-Type: multipart/alternative;
 boundary="------------31694428842C53AF5836E931"
Content-Language: en-US
Content-Length: 34375

This is a multi-part message in MIME format.
--------------31694428842C53AF5836E931
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Mark,

I had a similar problem earlier.� Jonathon Pendlum responded to me as 
follows:

>/The might be due to the PYTHONPATH env variable not including the />/directory where your OOT module is installed. Try looking for a />/directory like /usr/lib/python2/dist-packages or similar and adding />/that to PYTHONPATH. /

/What I had to do was add a search path to the location where my OOT 
module was added to.� In my case the issue was solved by adding the 
following:/

$LOCALPREFIX/lib/python2.7/dist-packages:$PYTHONPATH

to my python path that is configured when you source the environment 
variables.� Also, this was done on my E310 but that was because that was 
where I was trying to execute the program (on ARM).� You may need to add 
the search path on your host machine so it knows where to find your new 
OOT module there as well.

Mike

On 2/15/21 5:40 AM, Mark D wrote:
>
> Mike,
>
> Thanks for your input into this, it�s really useful being able to talk 
> over this issue.
>
> My system will be placing all the signal conditioning within the FPGA. 
> The output from this is a relatively low data rate which I was hoping 
> to stream via the Ethernet connected to the ARM. There should be no 
> need for us to use the SFP+ interface. The ARM will not be doing any 
> processing of the data, just passing it back to the host PC. I have 
> just out of interest tried connecting via the SFP+ and get the same issue.
>
> I am able to build the FPGA image with my block in, and upload this to 
> the E320. My initial understanding of how a system as described above 
> would work is the software on the Host PC would issue commands to the 
> USRP to read and write registers in blocks as required to configure 
> the device, for example the gain setting in the examples. The ARM 
> wouldn�t require any knowledge of how the blocks worked, it just 
> writes and reads to the address within the blocks as instructed. This 
> was what I thought Network Mode (as opposed to Embedded Mode) meant, 
> it was acting more or less like the USRPs without the ARM.
>
> As we�re both seeing the same error then I�m not 100% sure that 
> cross-compiling the OOT code for the E320 will resolve the problem. 
> �My GNU radio code is running entirely on the host PC. I�ll probably 
> look more into the cross-compiling today as I�m running out of any 
> other ideas to try.
>
> The error I�m currently hitting is that when running the GNU radio 
> flow graph with my new block I get the error
>
> �Line 98, in __init__
>
> ��self.dilbert_dogbert_0=dilbert.dogbert(
>
> AttributeErroe:module �dilbert� has no attribute�dogbert��
>
> What I have found that is if I enter Python on the command line and 
> enter �import dilbert� followed by �dir(dilbert)� then it appears that 
> there�s nothing in this module other that the things like __builtins__ 
> , __cached__,__doc__ �.. . There is no dogbert class within module, 
> and this I think is the source of the issue.
>
> Like you say, we could really do with a response from Ettus to throw 
> some light on this. An update to Gain Block tutorials aimed at the 
> E3xx devices would be really useful.
>
> Mark
>
> *From:*USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of 
> *Mike via USRP-users
> *Sent:* 12 February 2021 21:37
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] RFNoC OTT Block on E320
>
> Mark,
>
> I looked at the capabilities of the E320 compared to the E310 and I 
> understand your comment about "embedded mode" now.� My experience is 
> strictly with the E310.� I didn't realize the E320 had an SFP+ 
> interface that allows you to stream sample data back to the host at a 
> much higher rate than the embedded ARM core can process.� So, it 
> seems like you should be able to update the FPGA on the E320 and 
> stream the data into your host machine bypassing the internal ARM 
> processor.� Still, it seems that you need to install the the new 
> RFNoC module onto the E320 so that it knows what each block in the 
> FPGA is when you run uhd_usrp_probe (you were seeing the block named 
> simply Block #0).
>
> And if you can stream data directly to the host then you shouldn't be 
> seeing the same error I'm having (running on the embedded ARM).� You 
> should be able to run directly on the host.� If you are trying to 
> run on the embedded ARM then you will have to follow the steps I 
> outlined below for cross-compiling.
>
> Meanwhile, I'd like to hear a response from one of the Ettus guys 
> because I'm sure I'm off base in a couple areas.� Like, my RFNoC 
> stuff is not working so clearly I'm doing something wrong.� But, I'm 
> hoping just talking it out will reveal where the errors are.
>
> Mike
>
> On 2/12/21 11:46 AM, Mike via USRP-users wrote:
>
>     Mark,
>
>     I'm not sure I understand what you mean by "embedded mode".�
>     That may be a term used for other Ettus devices like X310 or
>     N310.� Let me describe what I think the E3xx GNU Radio universe
>     looks like.
>
>     In addition to the Ettus E310, I have a Lime Mini device that
>     connects directly to the host computer via USB3.0.� Any GNU
>     Radio program that I make (usually gnuradio-companion) runs
>     directly on the host computer (my laptop with Ubuntu 18.04LTS) and
>     directly processes the raw samples from the radio. Ettus X310 and
>     N310 type devices would transfer raw samples from the radio via
>     10GigE type interfaces for similar processing on the host
>     computer.� Note, no local software processing on the USRP
>     device.� FPGA processing, yes; but software processing, no.
>
>     In contrast to that, the E310 has an embedded ARM processor that
>     executes a python script (usually output from GRC).� Obviously,
>     this needs to run in non-gui mode which is controlled by the
>     "Options" block in your GRC flow graph (set to No GUI).� Similar
>     to the host computer running with the Lime Mini (for example), the
>     ARM processor can process the raw samples from the radio.�
>     However, since the ARM processor is relatively low powered it
>     cannot process "raw" samples at a very high rate.� Therefore it
>     requires the FPGA (RFNoC) to handle as much of the raw data
>     processing as possible.� So, the host computer is used to
>     generate the FPGA bit file (using Xilinx, Vivado) as well as any
>     software modules (OOT) that need to be run on the ARM.� This is
>     where the cross-compiling comes in.� The host computer has to
>     compile the code that is going to eventually execute on the
>     ARM.� After the cross-compilation is complete you need to move
>     your newly compiled module over to the E3xx.� This is where I
>     use sshfs so that I can "make install DESTDIR=..." into a location
>     that is temporarily visible within the E3xx device.� Eventually
>     you will copy this data to the flash card on your E3xx device so
>     that your application can be available at any time (running
>     totally disconnected from any host computer).
>
>     So, using the E3xx devices are a little more complex because you
>     have to navigate the cross-compiling aspect and rely on the FPGA
>     to handle the higher bandwidth data processing.� Thus the reason
>     why I'm anxious to fix an issue with the ARM executing a GRC
>     flow-graph that contains an OOT RFNoC module.� It's hard to make
>     the E3xx do anything reasonable without the FPGA performing as
>     much work as possible.
>
>     Anyway, hope that helped clear things up a little,
>
>     Mike
>
>     On 2/12/21 10:32 AM, Mark D wrote:
>
>         Thanks Mike,
>
>         �
>
>         I don�t have a much experience of Linux, I�ve just had to
>         look up what sshfs is, so as you can imagine this is becoming
>         a very steep learning curve for me.
>
>         �
>
>         After reading your reply and doing a bit of research I�ve
>         found AN-315 �Software Development on the E3xx USRP� which
>         goes through the cross-compiling process. Unfortunately it
>         looks like this was written for UHD 3.14.1. so there may be
>         some differences for 4.0.
>
>         �
>
>         I did initially think that as I wasn�t using the USRP in
>         �embedded mode� then the firmware on the unit wouldn�t
>         need to be updated, and the RFNoC would be more or less
>         configured via the host computer. Seems that this isn�t the
>         case.
>
>         �
>
>         Mark
>
>         �
>
>         *From:*USRP-users <usrp-users-bounces@lists.ettus.com>
>         <mailto:usrp-users-bounces@lists.ettus.com> *On Behalf Of
>         *Mike via USRP-users
>         *Sent:* 12 February 2021 13:40
>         *To:* usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>
>         *Subject:* Re: [USRP-users] RFNoC OTT Block on E320
>
>         �
>
>         Mark,
>
>         For uhd_usrp_probe to correctly read your fpga block module
>         you need to update the XML file in your
>         RFNOC-module/rfnoc/blocks directory.� Then you need to
>         cross-compile your module like you would with gr-ettus and
>         install it on the E320.� I use sshfs to cross-compile on the
>         host and make it immediately available on my E310.
>
>         It may be that the process on UHD4 is slightly different but
>         that is what I do to make the correct name of my new block
>         show up in uhd_usrp_probe.
>
>         I still have the python "attribute error" so hopefully now
>         that two people are seeing this on both UHD3.15 and UHD4.0 we
>         can get to the bottom of it.
>
>         Mike
>
>         On 2/12/21 6:52 AM, Mark D via USRP-users wrote:
>
>             Hi,
>
>             �
>
>             I�m trying to add an OTT block into the FPGA for an
>             E320. I�m using version 4.0.0 of the UHD.
>
>             �
>
>             So far I�ve used rfnocmodtool to create the OOT folder
>             structure and add my new block. My initial plan was to add
>             this block as per the default code generated that just
>             passes data through. I wanted see that this was
>             instantiated into the FPGA and the system still worked
>             before starting to add my own code.
>
>             �
>
>             I�ve been following the �Getting Started with RFNoC in
>             UHD 4.0� page on the Ettus website and also the Youtube
>             video �RFNoC 4 Workshop - GRCon 2020�. The .yml file
>             I�ve created connects the OTT block between the radio Rx
>             and stream endpoint (I�ve removed the DDC / DUC and
>             already had the FPGA working without these).
>
>             �
>
>             So far I�ve got the FPGA built and uploaded to the FPGA.
>             Uhd_usrp_probe shows that the RFNoC routing as expected,
>             but the name of OTT block has been replaced with Block#0.
>             The OOT project appears as a folder in GNU radio with the
>             new block available to be dragged into the project.
>
>             �
>
>             I think the issues I�m now having are similar to those
>             reported recently by Mike with the E310. Trying to run a
>             GNU radio project results in the error � AttributeError:
>             module �Dilbert� object has no attribute 'dogbert'�
>
>             �
>
>             The examples I�m following are all based around the
>             X310, is there an extra step required for the E3xx USRPs
>             to update the firmware running on the device so that
>             it�s aware of the new block type? If so I�ve no idea
>             how I would go about this.
>
>             �
>
>             Any help on this would be much appreciated,
>
>             �
>
>             Mark
>
>             ------------------------------------------------------------------------
>
>             This email and any files transmitted with it are
>             confidential and intended solely for the use of the
>             individual or entity to whom they are addressed. If you
>             have received this email in error please notify the system
>             manager.
>
>
>             _______________________________________________
>
>             USRP-users mailing list
>
>             USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>
>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list
>
>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------31694428842C53AF5836E931
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>Mark,</p>
    <p>I had a similar problem earlier.� Jonathon Pendlum responded to
      me as follows:</p>
    <pre>&gt;<i> The might be due to the PYTHONPATH env variable not including the 
</i>&gt;<i> directory where your OOT module is installed. Try looking for a 
</i>&gt;<i> directory like /usr/lib/python2/dist-packages or similar and adding 
</i>&gt;<i> that to PYTHONPATH.

</i></pre>
    <p><i>What I had to do was add a search path to the location where
        my OOT module was added to.� In my case the issue was solved by
        adding the following:</i><br>
    </p>
    <p>$LOCALPREFIX/lib/python2.7/dist-packages:$PYTHONPATH</p>
    <p>to my python path that is configured when you source the
      environment variables.� Also, this was done on my E310 but that
      was because that was where I was trying to execute the program (on
      ARM).� You may need to add the search path on your host machine so
      it knows where to find your new OOT module there as well.</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 2/15/21 5:40 AM, Mark D wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:LNXP123MB372488AF5D8D50DFF85E9C90CA889@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM">
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
	font-family:"Courier New";}
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
        <p class="MsoNormal">Mike,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">Thanks for your input into this, it�s
          really useful being able to talk over this issue.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">My system will be placing all the signal
          conditioning within the FPGA. The output from this is a
          relatively low data rate which I was hoping to stream via the
          Ethernet connected to the ARM. There should be no need for us
          to use the SFP+ interface. The ARM will not be doing any
          processing of the data, just passing it back to the host PC. I
          have just out of interest tried connecting via the SFP+ and
          get the same issue.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">I am able to build the FPGA image with my
          block in, and upload this to the E320. My initial
          understanding of how a system as described above would work is
          the software on the Host PC would issue commands to the USRP
          to read and write registers in blocks as required to configure
          the device, for example the gain setting in the examples. The
          ARM wouldn�t require any knowledge of how the blocks worked,
          it just writes and reads to the address within the blocks as
          instructed. This was what I thought Network Mode (as opposed
          to Embedded Mode) meant, it was acting more or less like the
          USRPs without the ARM.
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">As we�re both seeing the same error then
          I�m not 100% sure that cross-compiling the OOT code for the
          E320 will resolve the problem. �My GNU radio code is running
          entirely on the host PC. I�ll probably look more into the
          cross-compiling today as I�m running out of any other ideas to
          try.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">The error I�m currently hitting is that
          when running the GNU radio flow graph with my new block I get
          the error
          <o:p></o:p></p>
        <p class="MsoNormal">�Line 98, in __init__ <o:p></o:p></p>
        <p class="MsoNormal">��self.dilbert_dogbert_0=dilbert.dogbert( <o:p></o:p></p>
        <p class="MsoNormal">AttributeErroe:module �dilbert� has no
          attribute�dogbert��<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">What I have found that is if I enter Python
          on the command line and enter �import dilbert� followed by
          �dir(dilbert)� then it appears that there�s nothing in this
          module other that the things like __builtins__ ,
          __cached__,__doc__ �.. . There is no dogbert class within
          module, and this I think is the source of the issue.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">Like you say, we could really do with a
          response from Ettus to throw some light on this. An update to
          Gain Block tutorials aimed at the E3xx devices would be really
          useful.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">Mark<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span
                  style="mso-fareast-language:EN-GB" lang="EN-US">From:</span></b><span
                style="mso-fareast-language:EN-GB" lang="EN-US">
                USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a>
                <b>On Behalf Of </b>Mike via USRP-users<br>
                <b>Sent:</b> 12 February 2021 21:37<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on E320<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p>Mark,<o:p></o:p></p>
        <p>I looked at the capabilities of the E320 compared to the E310
          and I understand your comment about "embedded mode" now.� My
          experience is strictly with the E310.� I didn't realize the
          E320 had an SFP+ interface that allows you to stream sample
          data back to the host at a much higher rate than the embedded
          ARM core can process.� So, it seems like you should be able
          to update the FPGA on the E320 and stream the data into your
          host machine bypassing the internal ARM processor.� Still,
          it seems that you need to install the the new RFNoC module
          onto the E320 so that it knows what each block in the FPGA is
          when you run uhd_usrp_probe (you were seeing the block named
          simply Block #0).<o:p></o:p></p>
        <p>And if you can stream data directly to the host then you
          shouldn't be seeing the same error I'm having (running on the
          embedded ARM).� You should be able to run directly on the
          host.� If you are trying to run on the embedded ARM then you
          will have to follow the steps I outlined below for
          cross-compiling.<o:p></o:p></p>
        <p>Meanwhile, I'd like to hear a response from one of the Ettus
          guys because I'm sure I'm off base in a couple areas.� Like,
          my RFNoC stuff is not working so clearly I'm doing something
          wrong.� But, I'm hoping just talking it out will reveal
          where the errors are.<o:p></o:p></p>
        <p>Mike<o:p></o:p></p>
        <div>
          <p class="MsoNormal">On 2/12/21 11:46 AM, Mike via USRP-users
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p>Mark,<o:p></o:p></p>
          <p>I'm not sure I understand what you mean by "embedded
            mode".� That may be a term used for other Ettus devices
            like X310 or N310.� Let me describe what I think the E3xx
            GNU Radio universe looks like.<o:p></o:p></p>
          <p>In addition to the Ettus E310, I have a Lime Mini device
            that connects directly to the host computer via USB3.0.�
            Any GNU Radio program that I make (usually
            gnuradio-companion) runs directly on the host computer (my
            laptop with Ubuntu 18.04LTS) and directly processes the raw
            samples from the radio. Ettus X310 and N310 type devices
            would transfer raw samples from the radio via 10GigE type
            interfaces for similar processing on the host computer.�
            Note, no local software processing on the USRP device.�
            FPGA processing, yes; but software processing, no.<o:p></o:p></p>
          <p>In contrast to that, the E310 has an embedded ARM processor
            that executes a python script (usually output from GRC).�
            Obviously, this needs to run in non-gui mode which is
            controlled by the "Options" block in your GRC flow graph
            (set to No GUI).� Similar to the host computer running
            with the Lime Mini (for example), the ARM processor can
            process the raw samples from the radio.� However, since
            the ARM processor is relatively low powered it cannot
            process "raw" samples at a very high rate.� Therefore it
            requires the FPGA (RFNoC) to handle as much of the raw data
            processing as possible.� So, the host computer is used to
            generate the FPGA bit file (using Xilinx, Vivado) as well as
            any software modules (OOT) that need to be run on the
            ARM.� This is where the cross-compiling comes in.� The
            host computer has to compile the code that is going to
            eventually execute on the ARM.� After the
            cross-compilation is complete you need to move your newly
            compiled module over to the E3xx.� This is where I use
            sshfs so that I can "make install DESTDIR=..." into a
            location that is temporarily visible within the E3xx
            device.� Eventually you will copy this data to the flash
            card on your E3xx device so that your application can be
            available at any time (running totally disconnected from any
            host computer).<o:p></o:p></p>
          <p>So, using the E3xx devices are a little more complex
            because you have to navigate the cross-compiling aspect and
            rely on the FPGA to handle the higher bandwidth data
            processing.� Thus the reason why I'm anxious to fix an
            issue with the ARM executing a GRC flow-graph that contains
            an OOT RFNoC module.� It's hard to make the E3xx do
            anything reasonable without the FPGA performing as much work
            as possible.<o:p></o:p></p>
          <p>Anyway, hope that helped clear things up a little,<o:p></o:p></p>
          <p>Mike<o:p></o:p></p>
          <div>
            <p class="MsoNormal">On 2/12/21 10:32 AM, Mark D wrote:<o:p></o:p></p>
          </div>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <p class="MsoNormal">Thanks Mike,<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">I don�t have a much experience of
              Linux, I�ve just had to look up what sshfs is, so as you
              can imagine this is becoming a very steep learning curve
              for me.
              <o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">After reading your reply and doing a
              bit of research I�ve found AN-315 �Software
              Development on the E3xx USRP� which goes through the
              cross-compiling process. Unfortunately it looks like this
              was written for UHD 3.14.1. so there may be some
              differences for 4.0.<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">I did initially think that as I
              wasn�t using the USRP in �embedded mode� then the
              firmware on the unit wouldn�t need to be updated, and
              the RFNoC would be more or less configured via the host
              computer. Seems that this isn�t the case.<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p class="MsoNormal">Mark<o:p></o:p></p>
            <p class="MsoNormal">�<o:p></o:p></p>
            <div>
              <div style="border:none;border-top:solid #E1E1E1
                1.0pt;padding:3.0pt 0cm 0cm 0cm">
                <p class="MsoNormal"><b><span
                      style="mso-fareast-language:EN-GB" lang="EN-US">From:</span></b><span
                    style="mso-fareast-language:EN-GB" lang="EN-US">
                    USRP-users
                    <a href="mailto:usrp-users-bounces@lists.ettus.com"
                      moz-do-not-send="true">&lt;usrp-users-bounces@lists.ettus.com&gt;</a>
                    <b>On Behalf Of </b>Mike via USRP-users<br>
                    <b>Sent:</b> 12 February 2021 13:40<br>
                    <b>To:</b> <a
                      href="mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
                    <b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on
                    E320</span><o:p></o:p></p>
              </div>
            </div>
            <p class="MsoNormal">�<o:p></o:p></p>
            <p>Mark,<o:p></o:p></p>
            <p>For uhd_usrp_probe to correctly read your fpga block
              module you need to update the XML file in your
              RFNOC-module/rfnoc/blocks directory.� Then you need to
              cross-compile your module like you would with gr-ettus and
              install it on the E320.� I use sshfs to cross-compile on
              the host and make it immediately available on my E310.<o:p></o:p></p>
            <p>It may be that the process on UHD4 is slightly different
              but that is what I do to make the correct name of my new
              block show up in uhd_usrp_probe.<o:p></o:p></p>
            <p>I still have the python "attribute error" so hopefully
              now that two people are seeing this on both UHD3.15 and
              UHD4.0 we can get to the bottom of it.<o:p></o:p></p>
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
                initial plan was to add this block as per the default
                code generated that just passes data through. I wanted
                see that this was instantiated into the FPGA and the
                system still worked before starting to add my own code.<o:p></o:p></p>
              <p class="MsoNormal">�<o:p></o:p></p>
              <p class="MsoNormal">I�ve been following the �Getting
                Started with RFNoC in UHD 4.0� page on the Ettus
                website and also the Youtube video �RFNoC 4 Workshop -
                GRCon 2020�. The .yml file I�ve created connects the
                OTT block between the radio Rx and stream endpoint
                (I�ve removed the DDC / DUC and already had the FPGA
                working without these).<o:p></o:p></p>
              <p class="MsoNormal">�<o:p></o:p></p>
              <p class="MsoNormal">So far I�ve got the FPGA built and
                uploaded to the FPGA. Uhd_usrp_probe shows that the
                RFNoC routing as expected, but the name of OTT block has
                been replaced with Block#0. The OOT project appears as a
                folder in GNU radio with the new block available to be
                dragged into the project.<o:p></o:p></p>
              <p class="MsoNormal">�<o:p></o:p></p>
              <p class="MsoNormal">I think the issues I�m now having
                are similar to those reported recently by Mike with the
                E310. Trying to run a GNU radio project results in the
                error � AttributeError: module �Dilbert� object
                has no attribute 'dogbert'�<o:p></o:p></p>
              <p class="MsoNormal">�<o:p></o:p></p>
              <p class="MsoNormal">The examples I�m following are all
                based around the X310, is there an extra step required
                for the E3xx USRPs to update the firmware running on the
                device so that it�s aware of the new block type? If so
                I�ve no idea how I would go about this.<o:p></o:p></p>
              <p class="MsoNormal">�<o:p></o:p></p>
              <p class="MsoNormal">Any help on this would be much
                appreciated,<o:p></o:p></p>
              <p class="MsoNormal">�<o:p></o:p></p>
              <p class="MsoNormal">Mark<o:p></o:p></p>
              <div class="MsoNormal" style="text-align:center"
                align="center"><span style="mso-fareast-language:EN-GB">
                  <hr width="100%" size="2" align="center">
                </span></div>
              <p class="MsoNormal"><span
                  style="mso-fareast-language:EN-GB">This email and any
                  files transmitted with it are confidential and
                  intended solely for the use of the individual or
                  entity to whom they are addressed. If you have
                  received this email in error please notify the system
                  manager. <br>
                  <br>
                  <br>
                </span><o:p></o:p></p>
              <pre>_______________________________________________<o:p></o:p></pre>
              <pre>USRP-users mailing list<o:p></o:p></pre>
              <pre><a href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a><o:p></o:p></pre>
              <pre><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></pre>
            </blockquote>
          </blockquote>
          <p class="MsoNormal"><span style="mso-fareast-language:EN-GB"><br>
              <br>
              <o:p></o:p></span></p>
          <pre>_______________________________________________<o:p></o:p></pre>
          <pre>USRP-users mailing list<o:p></o:p></pre>
          <pre><a href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a><o:p></o:p></pre>
          <pre><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></pre>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------31694428842C53AF5836E931--


--===============7812187409667224775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7812187409667224775==--

