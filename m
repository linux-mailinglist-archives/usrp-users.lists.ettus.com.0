Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7679F91DC
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 13:04:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67B81385994
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 07:04:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734696242; bh=60dOk2xixbP3LR2+xbIKLMQ69zDHUBoNtdT0Mjo7cN8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=afEjRzYhYMQKiIjf2ohS4QrlEgrjphHWCgfMl5ykL3hfW4W2MX8bcBOJHbYy3KXum
	 A3vJ6JH5aeRkLs206oiRP7CvhuY5qtshwNSTYgzZXeDiAYWKKV0ldPTisS94PB3bAG
	 qeaIBBVxxl6gdXtc8ExV9NAhiOGd23KsZTWknEfcC4jy8/fk8EIviqfWrYGyA2coxn
	 F98o7REM7PkPswVvijc9t6aGfjcSf6j5lNjiA/K0EFMEVMixg8So5WgmaZ1ZLzDHDK
	 oVCLDcGV3It20JeYFllh+rvrJQJr4lmM6rsTqr0vWN4jUT2AnnW3xUXQ1kOB8ynZqI
	 dzwiKPa7At1zA==
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CA8B38586B
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 07:03:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UcsRbtGQ";
	dkim-atps=neutral
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-728e3826211so1536890b3a.0
        for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 04:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734696184; x=1735300984; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rg6yhEMV+UKijQflSQoIrxkcu3fx18atul0uX2hhNs8=;
        b=UcsRbtGQ7b/3AbN6Gm5tiDvCY10XuqWpJwM1iO/XAi308EL9whacBKr1JJcJTFS4jQ
         vCvDVoKHys8IGGptHmV1zRXd9IMxoTBVRW3VlD93czsShrN9H/04CESzZj6tHNKisSFN
         d+R3Za43ypf0R8aiunKP39Lg4NTuUjP35Jz5vRV9Ga1HWeOKqpF7Pks+6M3jEDT8F5RW
         IQtS2ltzpliWWcr/DFBN0X2q608C3KbU/CR8oBOjtvx7kbe/RkkTJS4vqT0TUgucXTOU
         dW8UMczVdCMHhUmgZfUIEDAe48D6J/p191JE6kUw/qq5BIbWL14QOtZw6YU4ikQeLJAq
         7/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734696184; x=1735300984;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rg6yhEMV+UKijQflSQoIrxkcu3fx18atul0uX2hhNs8=;
        b=mVhLNozKQ2lc1aDwbRMJNgh4BOWuQXCd/1wtvPLJiuNY4feeVsaJ4K4cu3wZr7yNnS
         3Jj+XEgzmKv9B7/42XnFVuB3BLf7ROoYpEp28S3kYNhGSSjUYUcxuia1jmqO+Q6+DIZB
         y5H4XnhM4gR79Jl60Hzsyq3DMJkiyV7FG9gaSDxsoUDOfal1LK0Vxmu98ZAv0jijaoQ6
         F8bWzZkX6Unc9ag//HMfFnrt5w0d09cu60rrM+zfRVFpwoPT5CBfcIUODoyEaW+xND/Q
         TODA/0UAFf//wccqh3Z7ClgjLwguTk8dL8LGwBw7rJC1PUvQB9/6uhSexitvErmb44QH
         cHXw==
X-Gm-Message-State: AOJu0YwIc5qWZuiJqPs7+mFv0+HIc7zLBZVAqBxpDoTqfnRBYqnfyNF3
	Y4RST0H5173wlgHDla+5hlHnzblAEraoDujG1CEQG5Vc+XRN5fB5cCDLPjjEnFrPTG8+T2ORyTf
	SKj/eKHK04+ZbVsAxddHOEuhMGdiBOQ==
X-Gm-Gg: ASbGnctvRyCdLeamRYjlo0usbZ7/QIwOFk57zjbc1mamVDJB3Fm+lJ+QC2k+Hv8zw5g
	mcHpdVOO47eACyLUCCiUUhEWvnrFs3304UojVD68=
X-Google-Smtp-Source: AGHT+IF0VbfySu3f0FjQ8z9TanGhErqExDSbcOZvVPbtO9uCQv39dJqLSS1tS1p8ClrXTGP2YxVxX3xNBVZj+Bz0h4o=
X-Received: by 2002:a05:6a00:4485:b0:725:c8ea:b320 with SMTP id
 d2e1a72fcca58-72abde0f951mr3801196b3a.14.1734696184034; Fri, 20 Dec 2024
 04:03:04 -0800 (PST)
MIME-Version: 1.0
References: <CA+0p0ZS4nzv6581RcTSbvuomn5me5CzRM-K1aza7aTSdYOjazg@mail.gmail.com>
 <CAFche=irY+qvRtgnizTAy8LJWvpCj1km5gLehRmT0DjjbObaEQ@mail.gmail.com>
In-Reply-To: <CAFche=irY+qvRtgnizTAy8LJWvpCj1km5gLehRmT0DjjbObaEQ@mail.gmail.com>
From: Andrew D <sciensfpgaeng@gmail.com>
Date: Fri, 20 Dec 2024 07:02:52 -0500
Message-ID: <CA+0p0ZQA1XfO3copxjzhpy8MV=aqOTL8pKvzHJ4O-9zZMB6hHA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: MMH7VU2IXDBIFAC66PBNKURODOCOVO6J
X-Message-ID-Hash: MMH7VU2IXDBIFAC66PBNKURODOCOVO6J
X-MailFrom: sciensfpgaeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users mailing-list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 RFNOC Endpooint YAML Configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MMH7VU2IXDBIFAC66PBNKURODOCOVO6J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9160865788486498435=="

--===============9160865788486498435==
Content-Type: multipart/alternative; boundary="000000000000d7be2c0629b26d93"

--000000000000d7be2c0629b26d93
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wade,

Thank you very much for the detailed explanation.

On Fri, Nov 1, 2024 at 10:35=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wro=
te:

> Hi Andrew,
>
> This is true of all RFNoC images. The "ctrl" setting refers to whether or
> not that endpoint has a connection to the control crossbar, which is used
> for sending control packets (e.g., register reads/writes) to/from RFNoC
> blocks. Because you can send control packets to any RFNoC block from any
> control port master, you only need one endpoint with a control port to be
> able to do control communication with all the RFNoC blocks. So you have t=
o
> have at least one endpoint with a control port and having more than one
> wastes logic because currently only the first one will be used.
>
> Wade
>
> On Thu, Oct 31, 2024 at 9:24=E2=80=AFAM Andrew D <sciensfpgaeng@gmail.com=
> wrote:
>
>> It appears that in all of the x410 and x440 image core yaml files, that
>> EP0 is the only endpoint that is configured with `ctrl:True`.  Is this
>> necessary and why is EP0 the only endpoint that requires control?
>>
>> Thank you!
>> Andrew
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000d7be2c0629b26d93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wade,</div><div><br></div><div>Thank you very much fo=
r the detailed explanation.<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 1, 2024 at 10:35=E2=80=AFA=
M Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wa=
de.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hi Andrew,</div><div><br></div><div>=
This is true of all RFNoC images. The &quot;ctrl&quot; setting refers to wh=
ether or not that endpoint has a connection to the control crossbar, which =
is used for sending control packets (e.g., register reads/writes) to/from R=
FNoC blocks. Because you can send control packets to any RFNoC block from a=
ny control port master, you only need one endpoint with a control port to b=
e able to do control communication with all the RFNoC blocks. So you have t=
o have at least one endpoint with a control port and having more than one w=
astes logic because currently only the first one will be used.</div><div><b=
r></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Oct 31, 2024 at 9:24=E2=80=AFAM Andrew D=
 &lt;<a href=3D"mailto:sciensfpgaeng@gmail.com" target=3D"_blank">sciensfpg=
aeng@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>It appears that in all of the x410 and =
x440 image core yaml files, that EP0 is the only endpoint that is configure=
d with `ctrl:True`.=C2=A0 Is this necessary and why is EP0 the only endpoin=
t that requires control?</div><div><br></div><div>Thank you!</div><div>Andr=
ew<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000d7be2c0629b26d93--

--===============9160865788486498435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9160865788486498435==--
