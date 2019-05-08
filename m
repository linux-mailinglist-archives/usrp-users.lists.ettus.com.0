Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B5717A22
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 15:13:44 +0200 (CEST)
Received: from [::1] (port=48524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOMO8-0005Ge-Uq; Wed, 08 May 2019 09:13:36 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:43447)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bpadalino@gmail.com>) id 1hOMNa-00057X-4B
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 09:13:32 -0400
Received: by mail-oi1-f179.google.com with SMTP id j9so14337581oie.10
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 06:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qYE//C831oDBHE9kwj+eFDVCvvkYUD4yH4CKC3fv1Es=;
 b=g9/Prp2zLq78EhH3SH1D+f9R1R5ZDODwgBZ4BwacwnpU5n49nRAhjcPDZq3rOTZkzd
 DoQ+OOlHwXMYjZW5dtVgzF5M8ND9XHUSG5WA2+eH+X/k6dxbJyD/o9Npx0+atIQ6YjY+
 3zcSZVJwV63wJMr6Q5L8oIFs7zE3EvZIOllYplNpWI88xvptN6i+R4BYsyguSLrdGJBs
 zHSMLiOREO4x4gi8QJewmRXhbawsLnfcA73DjmtyjdJeyVlnU+76HsbXkPkJJ3g3ug5V
 TE6I72PClJJtp3Qc3qwbMR72RsS3jwXDIPSCRXuhm/jUgUfVTnrf247Xx6g3CP+LK3gj
 8dqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qYE//C831oDBHE9kwj+eFDVCvvkYUD4yH4CKC3fv1Es=;
 b=Wlv+HOmR5B/jC58P1c5fLkZC7fTCMBlmu2vAOEc0xIFKCzdJUkKgy+RPk8aZU+dVGa
 a2OY4hJPdJkW+boTWR2tPrNwoY3b/+amMNJFrGESXmUF2URhQFLClb3u6OknLbFH2Tn8
 L3TaogQvAS+7T2fUmOruU9qYUCp4r4seAMjQTnjg/1rkILRJuuz139GsEbT4jyZO1saE
 RmT+A78Jy3Fqekut1XeLHfchjX9zfN/ZIquu2wCNiC+JJ6AxVBUiEN0ISU2DsfqMmQK5
 EuTINxHwnWKgH0sM1u1o7vXBB6v+IeB85L8m3cXRrF/hlvNi4lF0syriDVZkVw3isOin
 3atw==
X-Gm-Message-State: APjAAAUrqXNzqP11gzWeg8ifgEWF/IfOgnKn69020gnzpw78phFPRIu5
 bEJks89vFrbup/wBJQ3nE+E9+q2ShD6WIQLRnA1LwXum
X-Google-Smtp-Source: APXvYqwkR97u2iMfuS9kEyNCm7oR3mTSWHXpqRZ8ULfm9L1WHcvI2TmlhFVhwayTcExyJghatx/xOVM/r+vghjk3dtk=
X-Received: by 2002:aca:ef82:: with SMTP id n124mr2148746oih.177.1557321141231; 
 Wed, 08 May 2019 06:12:21 -0700 (PDT)
MIME-Version: 1.0
References: <c60adc662b64d17b8d862d9557d4700c@iem.thm.de>
In-Reply-To: <c60adc662b64d17b8d862d9557d4700c@iem.thm.de>
Date: Wed, 8 May 2019 09:12:09 -0400
Message-ID: <CAEXYVK5Tcb_wJLxu17Kry8WLAVc6tqzifJaCE=7n34UDTrP_4A@mail.gmail.com>
To: Marwa Boukhari <Marwa.Boukhari@iem.thm.de>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] how can i receive 2 different signals with the
 USRP B210
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1326531815429084964=="
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

--===============1326531815429084964==
Content-Type: multipart/alternative; boundary="0000000000006ca56c05886015a6"

--0000000000006ca56c05886015a6
Content-Type: text/plain; charset="UTF-8"

On Wed, May 8, 2019 at 5:43 AM Marwa Boukhari via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I want to send and receive a Signal  at the frequency 900MHz with the
> Channel 0 , and want to receive another Signal from the generator at the
> frequency 5,68GHz with the other channel.
> I tried to realize this but it didn't work.
> Has someone maybe an idea what's the problem is.
>

The two receivers use a shared LO, so this won't work.

To receive two different frequencies, you need two radios.

Brian

--0000000000006ca56c05886015a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 8, 2019 at 5:43 AM Marwa Bouk=
hari via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
I want to send and receive a Signal=C2=A0 at the frequency 900MHz with the =
<br>
Channel 0 , and want to receive another Signal from the generator at the <b=
r>
frequency 5,68GHz with the other channel.<br>
I tried to realize this but it didn&#39;t work.<br>
Has someone maybe an idea what&#39;s the problem is.<br></blockquote><div><=
br></div><div>The two receivers use a shared LO, so this won&#39;t work.</d=
iv><div><br></div><div>To receive two different frequencies, you need two r=
adios.</div><div><br></div><div>Brian</div></div></div>

--0000000000006ca56c05886015a6--


--===============1326531815429084964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1326531815429084964==--

