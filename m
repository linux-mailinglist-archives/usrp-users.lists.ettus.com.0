Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B75AC268
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 00:18:45 +0200 (CEST)
Received: from [::1] (port=52874 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6MYz-0001yY-IN; Fri, 06 Sep 2019 18:18:41 -0400
Received: from sonic306-6.consmr.mail.bf2.yahoo.com ([74.6.132.45]:36299)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1i6MYw-0001pw-6h
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 18:18:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1567808277; bh=CcgcjUf2qjEu8JG5nX5iRIySQumyxygnErvRp1VLrkE=;
 h=Subject:From:To:Date:References:From:Subject;
 b=tBGcXRjjVHHxsgsx/XoW2rEv0jjT6550BsGjP3axHV7EvMZW7Svyfy1T8kYr5b23fZUSm4JSErb+RcK72zgRm8E93x7EN7H2+fFtN/7WcUzwitQDYLS5WFhuLkbJjDsbTV5Br/ol7Vht6tTlhEgfPBIihAuHrfcvBHgBGpEOrqKQsFC9EAgWOhaJEJhknLPBaYKQIcMbYgOWe7XG3DLv1FY4bbWRVKy9aCB2KNDKovF3XChsqdubGNGgQ3XyZPgeT6kFJGqCbea6+RHcFa0CELpiVWa0s6hn4+PCuWYXLfd0Z+Il8Q3SOYmh+8RtEKJ00k19Amw0SlGdyZzgYX9ifQ==
X-YMail-OSG: xqijIXMVM1nfvilvpu8n2GNqX5hq8FdpR7vY7xZcoo2LcKaTZwZ2NZ4Eb_ZgpYj
 Ggowv_Nmtz.ELDkwUxD4FEslzkR6GwE3eTRgrYY7HWSG6znpW97CGWP5H6YqyIFbH_fVFUyFPCxW
 WuhWCoRFMUVxXz_yQM0Nhqir9MQwGr_NwOkgmR3jgQ5IKAxPlxh82xVjGF2w2FIfmfFS6eelV3TU
 07.p2I_OD6BWPXJIGyGNWKqjL3bjZ9c8hpG31qBUSZnVlTGp3Yv_cmgDaHNSpMhMfpiPlfTLAgrB
 4NqzA1.2t_8Ese4MOP3MiBiscdsQ6whkAs2qJhGAmwipxzxa66.M5p.gNNiSJeRsrVNSNLjWiVlI
 ZMaEgfz9re2UGdH6kkqWK6Pif9P_1o6i0u20D7a_S0pKN1IOgffYHGVZ34GKxjaaDgWU.2EH98nt
 lOU2p5IG_4DSe_9SZBJslAJTc0sz6Ch2HhV_m.l1hLdmc4RqgAAXnGv2mTKFw2dHyOVCpDvVRY6D
 UMmA1If5q.FHiODDYQwViAM.NoKbcofDohYhHGKCLCfUuQoV_hdvMbmqMclEDzr5NZsIE8o5L99T
 HrV.jO3V5rJImD0bjJI5sr6w_qohInCpHvJMkRiDvD6meCPYpcyBTN60p5PI2oY.WcBC2XH50OIw
 oo.qkeUIBb7BFbqtsY6qEqpTaoAWMh9UNH03O0CWl8vae7MKvm9fpXjFyZE_spI4FPFEoh4TOu.i
 bCq.VEesF8ovTLHcpKRwwag.nhRVjI682kgzOlZDI47jk4_WFy8darKstz17O2Sjajgrm892JhlT
 y1G86G1PtXIXS1t6DtknhclkrptIBOzd0dT0FARJOg7icxt0N0_m5M_ZOEutkYYipAiLliHRzlHI
 T8LZkbfLWSBFw3hwF1gfLjTitPB3S0Y0jE9CTAEbsSe2XriOQQfCfinO1MKFHf1T86Evpa2DagO3
 U.sRDhdqwPKiVwlwojw9r41c3EMhxJzlwLDclRTWfFeV5YoPpBINhY7i_y_Gi9jYmQKrkP7e2r0n
 ryBuC9jev_hZR6tS5QWBFPXmZ4M5H3xYN6Il8HnHojDINAoR8lg5tm84mffA1baj9VoAUWP8SAx_
 DbFyj6swoALbw11NgiJwZqorbBbgpkKRmPQvif028nf2_5VEjmNsLYDqnSk1w0zN.xV7WqcWBoWn
 cvbRwThoKVlf5guoAdLKxihfNEf8STRpix6Zphzf.Zh99ryje.3GSY3gnod8A_x0VYjTrjbwYVfj
 _2nPbAFZnVimWAfY6pI9CABIlF7ebFXDH8VwpFnUk3k.KaxBj2L5SABSD1WLqto1XEu_73.vR8Bc
 CgdygcyuuPFZfUnQc9.55UjLNEvBiuLVnf3CIRThi6YioDPhchUWd2IAuVaa2gjs-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.bf2.yahoo.com with HTTP; Fri, 6 Sep 2019 22:17:57 +0000
Received: by smtp401.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 59dbae0d41b1fb0016525c6f7e613387; 
 Fri, 06 Sep 2019 22:17:55 +0000 (UTC)
Message-ID: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel@sbcglobal.net>
To: etus list <usrp-users@lists.ettus.com>
Date: Fri, 06 Sep 2019 17:17:53 -0500
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
References: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel.ref@sbcglobal.net>
X-Mailer: WebService/1.1.14303 hermes Apache-HttpAsyncClient/4.1.4
 (Java/1.8.0_181)
Subject: Re: [USRP-users] Addsub HLS Block Error
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

Nick-
Could you share the tricks to remove one of the output ports? I don't
I'm having similar issues with my modified addsub block and don't have
enough room on the e310 fpga for extra fifos. It's not obvious from the
noc_block_addsub code, the use of splitstream and dummy variables is
very confusing.

Tnx,
Dave (and I'm sure many others, based on threads I've seen in searches)

________________________________
From: Nick Foster <bistromath at gmail.com>
Sent: Tuesday, September 3, 2019 11:45:46 PM
To: Quadri,Adnan <adnan.quadri at louisville.edu>
Cc: usrp-users at lists.ettus.com <usrp-users at lists.ettus.com>
Subject: Re: [USRP-users] Addsub HLS Block Error

That shouldn't be. Even if you connect both outputs to the host?

I admit I got fed up with it in my own application (don't want both
streams going into the host) and just modified the addsub block to be
an add-only block.

On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan <adnan.quadri at
louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
I tried connecting one Signal Source block to both the inputs of addsub
block. It still throws the same error.

Adnan
________________________________
From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
gmail.com>>
Sent: Tuesday, September 3, 2019 11:40:05 PM
To: Quadri,Adnan <adnan.quadri at louisville.edu<mailto:adnan.quadri at
louisville.edu>>
Cc: usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>
<usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>>
Subject: Re: [USRP-users] Addsub HLS Block Error

Oh, I see. You have separate sources connected to the same addsub
block. It's telling you that you need to use timed stream commands to
start the stream, or else you will see undefined behavior. Personally I
think that error should be demoted to a warning -- anyone from Ettus
want to chime in?

On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan <adnan.quadri at
louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
Hello,

Thank you for your prompt response. I have connected both the addsub
output to two QT Gui Sink but I still get the same error. I have the
Copy block in the middle as well.

I am attaching a screenshot of my flowgraph. I tried with different
USRP sources/Signal Sources as well. But it is the same error.

Thanks,
Adnan

________________________________
From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
gmail.com>>
Sent: Tuesday, September 3, 2019 3:57 PM
To: Quadri,Adnan <adnan.quadri at louisville.edu<mailto:adnan.quadri at
louisville.edu>>
Cc: usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>
<usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>>
Subject: Re: [USRP-users] Addsub HLS Block Error

I ran into this the other day and it's independent of the HLS component
of the addsub block (since the interface is identical). You need to
connect both outputs of the addsub block to something, even a null
sink. I'm pretty sure this wasn't the intended behavior and also pretty
sure that it wasn't like this last time I checked (which was more than
a year ago), so maybe it should be filed as a bug.

Nick

On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <usrp-users
at lists.ettus.com<mailto:usrp-users at lists.ettus.com>> wrote:
Hello,

We are trying to run the RFNoC addsub HLS block.

I was able to build the FPGA Image and made sure in the noc_block
verilog code to point to the HLS implementation for addsub block on
RFNoC as opposed to the verilog/VHDL implementation.

But when we run the example Flowgraph with two signal source as input
to the two inputs for addsub block on GRC, we get the following error -

ERROR:
thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]:
RuntimeError: Invalid recv stream command - stream now on multiple
channels in a single streamer will fail to time align.

Does this have anything to do with the C++ code for HLS implementation
or is it a problem at UHD level?

Thanks,
Adnan
_______________________________________________
USRP-users mailing list
USRP-users at lists.ettus.com<mailto:USRP-users at lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=DwMFaQ&c=OAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&r=JoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&m=XH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&s=_hsJH03rqnDSUZXWGyx31-8I7HJLsU5_S5hs-j5_WRw&e=>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190904/3138375d/attachment.html
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
