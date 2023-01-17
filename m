Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6497366E307
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 17:04:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 469383800AF
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 11:04:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673971495; bh=UaALLy0DPPkORzlN6KxgrOS8/4cjiOgzZ6AT2v82pYk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TlUEvauFAQ9iNGXP938N3+ypHchoEKqDr8ujblTzJ3OAxt4g4aqQ6knWWLzQ7SiAo
	 qCjiUnuko3f+RkETN9JY14JoI+zigoIERoyqyew01m9lKKG3+lBqsCKqE9aKvFZc+i
	 nM0R5NGMAZrfmBSrStf0cu//Ns4AfG6vlftPhepFwLQeDBBLJ1cBl1dkU4s8bPmS1m
	 rnkEFJ5eD9iFi0ATC7DcmeBaTnWNzcZwrMUA4VxCcZ8Nk4lcJk19SsGYY+h3HuurqO
	 aCcMMhbi8ESloBqXrAXOQoxNE6JXgDG0lXXyXiHmkZ+aHoxQ49mMTN59NUZ5F42iO+
	 XmZ6Kb451nQRw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A42843800AF
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 11:03:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673971415; bh=RHuJciGxRRE3riVkfx8iqzWwc/nSAJxcugXuE1ocR9w=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=dnKCzK5AsIPEn2N2Ax5xlvoqZZpVJ+BC3j42z5nQsKrKEazQhH3UYbwth0TRjUi2r
	 wd9HDi+3XVevur4fLPUpefOjxNafgq1b571iyjBzpZ8Q5Ad22jSvPWDemlO0TGwMFb
	 ybxNpD53j1tSlYPgkhFqawb/wko5ciB81bq014lGurwWSs5qVOanioIsKX2eHNnV3C
	 LBr3vdFoEI13Djc0sKUXBvSw6lTYLyIrGrH4RGDLWcigI9sHb4i91N60UgIynD3YRq
	 LY9jDI6SU6LTYGkOVrv48vyytVvkE5Alu/c18SlNN3+60lE7MXFDTeJl4NrTO8Xzw1
	 tCWE6qxm8JQOA==
Date: Tue, 17 Jan 2023 16:03:35 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <mIzTYZfqFHnwMJHLEJBT3irtE58oWqYPr5HJiutOI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK4H+2pBCAFmrzfP=G0GWm4GBTSnYp37vVN2KWSWgnBFKg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AQYGWNUFSDZLJTSZTUEEALXRJ2K7VYPZ
X-Message-ID-Hash: AQYGWNUFSDZLJTSZTUEEALXRJ2K7VYPZ
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AQYGWNUFSDZLJTSZTUEEALXRJ2K7VYPZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2531153170427007575=="

This is a multi-part message in MIME format.

--===============2531153170427007575==
Content-Type: multipart/alternative;
 boundary="b1_mIzTYZfqFHnwMJHLEJBT3irtE58oWqYPr5HJiutOI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mIzTYZfqFHnwMJHLEJBT3irtE58oWqYPr5HJiutOI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have the vivado project saved now, thanks for your help!

For the simulator files, I am a bit lost as to how it should be created?

I am following these instructions to build the simulator files https://fi=
les.ettus.com/manual/md_usrp3_sim_writing_sim_makefile.html. I tried runn=
ing the viv_simulator with the xsim(and without) and I get this.

```
sudo make viv_simulator.mak xsim
```

```
make: Nothing to be done for 'viv_simulator.mak'.
```

```
make: *** No rule to make target 'xsim'.  Stop.  =20
```

What am I missing here. I also found a folder =E2=80=9C/workarea/uhd/fpga=
/usrp3/top/n3xx/sim=E2=80=9D with 6 directories, each with a Makefile and=
 testbench systemverilog file. Is there something I should do with those?=
 Is there a prebuilt simulation I can play around with, or do I need to m=
ake one from scratch?

Thanks,

Joe

--b1_mIzTYZfqFHnwMJHLEJBT3irtE58oWqYPr5HJiutOI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I have the vivado project saved now, thanks for your help!</p><p>For t=
he simulator files, I am a bit lost as to how it should be created?</p><p=
>I am following these instructions to build the simulator files https://f=
iles.ettus.com/manual/md_usrp3_sim_writing_sim_makefile.html. I tried run=
ning the viv_simulator with the xsim(and without) and I get this.</p><pre=
><code>sudo make viv_simulator.mak xsim</code></pre><pre><code>make: Noth=
ing to be done for 'viv_simulator.mak'.</code></pre><pre><code>make: *** =
No rule to make target 'xsim'.  Stop.   </code></pre><p>What am I missing=
 here. I also found a folder =E2=80=9C/workarea/uhd/fpga/usrp3/top/n3xx/s=
im=E2=80=9D with 6 directories, each with a Makefile and testbench system=
verilog file. Is there something I should do with those? Is there a prebu=
ilt simulation I can play around with, or do I need to make one from scra=
tch?</p><p>Thanks,</p><p>Joe</p><p><br></p>


--b1_mIzTYZfqFHnwMJHLEJBT3irtE58oWqYPr5HJiutOI--

--===============2531153170427007575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2531153170427007575==--
