Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF325AC36A
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 01:51:49 +0200 (CEST)
Received: from [::1] (port=46734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6O12-00005k-Ak; Fri, 06 Sep 2019 19:51:44 -0400
Received: from sonic309-19.consmr.mail.bf2.yahoo.com ([74.6.129.193]:39155)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1i6O0y-0008Rj-U5
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 19:51:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1567813860; bh=cbHvTbZySm+jLr20AWqVLmutYwpo5+7i5kGpxRBjmgc=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject;
 b=LWuitsB8KQcplHqbtQOyuxRwoCZk2jLAlFYE6FHEE6azA7wOqeOzsiyoOJhNnCa83FVw2x7MEVx5JIobc49GRPlJSxZX2re4NmSulqDvm/YZmwzCC0/QPuBuVWmyFdAuV0OvrtIOLpHA7Rke2Z4+/WXOaV48s6tFPVk2t94PSwc7clGcGMEXhjCo8+YWFhuDPp/rtSCSQAn7g1Z26MRXu6AYe3VvKICokvY2pL/xoVsFU4gGBA6HhSme5/cJT/bRHnU3bdO+i/ulsatLG9g/Y0n6yBYh7aUn5v9z8bJ3r1MqmwicNwo52+yhpXUjN2i38vnJz3Qye9+5OgCpMXL1Fg==
X-YMail-OSG: nBm5.jgVM1kqWl4EQ.slF6i8PekA6NvKAk85oGJVeztuqltxLhEkdGOB5OOyq8D
 mQBDdgcsqdHFTN23eaRRDzlKo1UKxPRln9IaPCKn4db42iqVcICpOH4f._niY9TWnI5paq4obY2M
 gm2QBlJmpoljTUFlAzBUqpV6.ZEJQDdbBnz8OtQ1_tavvB4YwqSc1uj3qYKNnAgzOZpKOVd9U_2C
 20JDtPo3JztI7TZiPSIPDgHN4bNqxQf3hVlhLyYg_ESDCLy7hB5DlHNnSiGf9t0VPW_4mhD6JhLI
 rCJVNrJabGtn3SHMEWuWycVM4VcQ5tWpeQn7X9aI5X8LShiFInsXkX5RJ2FBdEKM0prZx29yK2Pv
 B4mYnyAqB5uhe6aX.zRyw1JeqrYK7aOWbEEPjtLamK0qNr6Y0MrUWcZh1KWWHexMjTsp.lntC9mq
 itGWy8LJ3EoHWtF0xoVuXivvX6II85SefVjiIgifIiIKixj4Mucgii35ohup4ztlKaPf0VQK977l
 Vf_19x6vp4XGM9Qril3cCTrUnjyBO6Wnc0.w8Aroh72aKwSjYF6tFZmzqjEGnbUm44Ecyoctx4H0
 bcYOuc.w1RQTtFdnMzfEmcHXjNyDX7TkJBgNSe0_TosAm56Ar8Hkej8slPSNs5dPzLoCbgMxforK
 lV5ZlPqTK109KP1az4dZaSMyq_6n3ohtKJSpHtadmgwrS7dkuuN5M0DgLI1akPZCekEKdn1g4JJY
 alXjACrBZlVA0S6qyKbZSRMnxCBsEM01xrF.RN0GssWe8mpreQkGM1LQQ.SjBRPNQvpZ6CQsLZG.
 1sUcF3yOyDVskcoNlV2B4qUuqpYvT9WhlGTRCmehU7cKemBxrKjnootRd82BK4rZXyELoVf7qSoE
 jnChX_LZ2Ow55h6dTcWhWuBx9P8JeCfBZjiOJ.FzpAMG1IiJ93rlFb5yKZYsJIL82vfQKqE1YvGE
 dWNo3AZc5YboDRXBgVnDB99_sWMzI4hgliQKQO0BWiwZKmeyLqUyfINcTFSWOjkIlCuEXnClkRB3
 dQrdc4urThy3I2fNs7HbTjeedsXomXsqIOWHld7_9NdAvbTGWUWQg6DqsXWhe2q5YcuUaypl1s9C
 UW3jDMaAwogRCaSVfvCgUzuEUyVWIiJA7zi_zoKmUKUJHAHoIlwhXWo.H8XKBcwC.asQiokVjkqM
 KEpHEzbB0YqBZE616nMEDWaMN0yoaJWNCWYGiTAQEvQW7iWySbHnx3_q6cqpJMNJwUEPmFxCFoyn
 kFPO1XgyN5Lteko3UtA_expHuEQ5zlGEyApHpe49M.Pm7fMJMs6zLorUSRGq6Sp1VhF1tzKoGsuu
 ksQqtvA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.bf2.yahoo.com with HTTP; Fri, 6 Sep 2019 23:51:00 +0000
Received: by smtp416.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID f10b019f763a8bd3a506eff5a7757202; 
 Fri, 06 Sep 2019 23:50:57 +0000 (UTC)
Message-ID: <ce552071284e5d859cf2bdf2fa5b83224920cc12.camel@sbcglobal.net>
To: Nick Foster <bistromath@gmail.com>
Date: Fri, 06 Sep 2019 18:50:56 -0500
In-Reply-To: <CA+JMMq_PWfCwHKYbuVNUBSkLStLJsHr2TuV7aEEatFO1Mp3mPQ@mail.gmail.com>
References: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel.ref@sbcglobal.net>
 <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel@sbcglobal.net>
 <CA+JMMq_PWfCwHKYbuVNUBSkLStLJsHr2TuV7aEEatFO1Mp3mPQ@mail.gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
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
Cc: etus list <usrp-users@lists.ettus.com>
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

Thanks!

I saw a noc_block_rfnoc_adder.xml in gr_ettus which looks as though
it's all set to control such a selectable add-or-subtract block, but I
never found the block.

On Fri, 2019-09-06 at 15:26 -0700, Nick Foster wrote:
> Here's a modified add-only block. You'll have to make a matching .xml
> descriptor and GRC block (if you're using gr-ettus).
> 
> Probably it would be a super useful thing to have an add/sub block,
> instead of an addsub block. A register-controlled mux to select which
> operation you want. I'll think about adding that to the Theseus Cores
> project.
> 
> Nick
> 
> On Fri, Sep 6, 2019 at 3:18 PM d.des via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> > Nick-
> > Could you share the tricks to remove one of the output ports? I
> > don't
> > I'm having similar issues with my modified addsub block and don't
> > have
> > enough room on the e310 fpga for extra fifos. It's not obvious from
> > the
> > noc_block_addsub code, the use of splitstream and dummy variables
> > is
> > very confusing.
> > 
> > Tnx,
> > Dave (and I'm sure many others, based on threads I've seen in
> > searches)
> > 
> > ________________________________
> > From: Nick Foster <bistromath at gmail.com>
> > Sent: Tuesday, September 3, 2019 11:45:46 PM
> > To: Quadri,Adnan <adnan.quadri at louisville.edu>
> > Cc: usrp-users at lists.ettus.com <usrp-users at lists.ettus.com>
> > Subject: Re: [USRP-users] Addsub HLS Block Error
> > 
> > That shouldn't be. Even if you connect both outputs to the host?
> > 
> > I admit I got fed up with it in my own application (don't want both
> > streams going into the host) and just modified the addsub block to
> > be
> > an add-only block.
> > 
> > On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> > I tried connecting one Signal Source block to both the inputs of
> > addsub
> > block. It still throws the same error.
> > 
> > Adnan
> > ________________________________
> > From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> > gmail.com>>
> > Sent: Tuesday, September 3, 2019 11:40:05 PM
> > To: Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at
> > louisville.edu>>
> > Cc: usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>
> > <usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>>
> > Subject: Re: [USRP-users] Addsub HLS Block Error
> > 
> > Oh, I see. You have separate sources connected to the same addsub
> > block. It's telling you that you need to use timed stream commands
> > to
> > start the stream, or else you will see undefined behavior.
> > Personally I
> > think that error should be demoted to a warning -- anyone from
> > Ettus
> > want to chime in?
> > 
> > On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> > Hello,
> > 
> > Thank you for your prompt response. I have connected both the
> > addsub
> > output to two QT Gui Sink but I still get the same error. I have
> > the
> > Copy block in the middle as well.
> > 
> > I am attaching a screenshot of my flowgraph. I tried with different
> > USRP sources/Signal Sources as well. But it is the same error.
> > 
> > Thanks,
> > Adnan
> > 
> > ________________________________
> > From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> > gmail.com>>
> > Sent: Tuesday, September 3, 2019 3:57 PM
> > To: Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at
> > louisville.edu>>
> > Cc: usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>
> > <usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>>
> > Subject: Re: [USRP-users] Addsub HLS Block Error
> > 
> > I ran into this the other day and it's independent of the HLS
> > component
> > of the addsub block (since the interface is identical). You need to
> > connect both outputs of the addsub block to something, even a null
> > sink. I'm pretty sure this wasn't the intended behavior and also
> > pretty
> > sure that it wasn't like this last time I checked (which was more
> > than
> > a year ago), so maybe it should be filed as a bug.
> > 
> > Nick
> > 
> > On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <usrp-
> > users
> > at lists.ettus.com<mailto:usrp-users at lists.ettus.com>> wrote:
> > Hello,
> > 
> > We are trying to run the RFNoC addsub HLS block.
> > 
> > I was able to build the FPGA Image and made sure in the noc_block
> > verilog code to point to the HLS implementation for addsub block on
> > RFNoC as opposed to the verilog/VHDL implementation.
> > 
> > But when we run the example Flowgraph with two signal source as
> > input
> > to the two inputs for addsub block on GRC, we get the following
> > error -
> > 
> > ERROR:
> > thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]:
> > RuntimeError: Invalid recv stream command - stream now on multiple
> > channels in a single streamer will fail to time align.
> > 
> > Does this have anything to do with the C++ code for HLS
> > implementation
> > or is it a problem at UHD level?
> > 
> > Thanks,
> > Adnan
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users at lists.ettus.com<mailto:USRP-users at lists.ettus.com>
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=DwMFaQ&c=OAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&r=JoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&m=XH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&s=_hsJH03rqnDSUZXWGyx31-8I7HJLsU5_S5hs-j5_WRw&e=>
> > -------------- next part --------------
> > An HTML attachment was scrubbed...
> > URL: <
> > http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190904/3138375d/attachment.html
> > >
> > 
> > 
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
