Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D03A5370E8
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 14:19:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4261E384346
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 08:19:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653826775; bh=X8DHVQnvT4T4kJ32/Auqcp4Oj3GZYOPyFgjBlODgFNo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gF4vHd1suuWJY1HtT0B8FqBUbx1ZL2y6MRC1JD7gcmr7b9wl+wxyy0fc/+Sgf+EjJ
	 oxZSnKXbqcKWwLiQCDVzNbI1p6gmDuHzmabXBwK4pnBfAHAavSTqyvxoMeBcGryDwm
	 l+SfLLK3SUYkpgfkmwQO8Lsp7Q1NnxONQlsc4Nu+pmrM2efdB4PXXZyI3FDbwmNIFE
	 +wmdpW4Afnj6xQKwwyY9LAlVgTQLzCClmBjsCjctUyNCJzqIy64QE5XYbzRkm6JF0O
	 zd1cg9AGq0pyvYdKSALSDgzkv0rMRmuFxdl2AVCoSYnqVDMMeEiFFJhuArk/nvB9cm
	 BiusWO6CX5YtA==
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id A75F73840E2
	for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 08:18:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YDSr3JtK";
	dkim-atps=neutral
Received: by mail-yb1-f179.google.com with SMTP id a64so4744751ybg.11
        for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 05:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=gxhZIst0zMHRT18mE84peFS1mkntCjA8Jf8hgRt2wXM=;
        b=YDSr3JtKsIJDWXtI9NDqtdJILNOWh+9srkLyyzjSoLVJq9+VpXNZrI6cvQwVasdAF0
         LkWrP9qDnPRedxOJV/aPnrYJpdp28SSnagqRyEd5WX7gdtzsX5iP5ilSuEj4ZGoSpgye
         RyroBpeJ2lPDF0HUfLHbWPH+hqWNJiAaJmpCzpRwu4TaII1vtLltb86KzhfvXC5O71g1
         IOkBcBbOY+SPVXYgg9lytK/7x1JLlEuxeIty8GocFuWspVTxN99QE0zVfMFSAyQEINmI
         LCJ+8LlZ7GydP3y/2nqcimvBt9kP1dGYRf61DWsAGeggxQz4qRQ0E4efvVn9FzwmwzA8
         p6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=gxhZIst0zMHRT18mE84peFS1mkntCjA8Jf8hgRt2wXM=;
        b=qlJSxVy7sSFx0MkYw1sTB1Ngja8L9QI3gZI8R5ykwLsA1tmLK7DM03ugXeXQlKTIke
         pfu5JkMBr/qpt9ahJa5q0FsGQs0SNHvPGWoyytRYyev73kGdZRlZ4nKnSmRij0f/E+F3
         azV2nStA1+THtecWJpSGA5JTz0iWX2V+Alp3C2PKR3FrEGg3KGmkqYP1Uhj6PrEDpix2
         YnQ3bwbjgXCUrx3/oc50riUrGVEAomectF8iK9g0fgxeLc9f2XEbDZLaJStvkvg02TlP
         7ixZLuafjTTtGiLAKzgwMiVrQ0RP+820YOwYMdi6EVhA1T8LP7zrH3gW76Da8FRBNnYf
         nF6g==
X-Gm-Message-State: AOAM530ghNPskkpjnChEiaaLke4zoA/TOUA0qFXO/rYnK/Vg7lfhI53M
	HWjYOH7jIraatJhTQbI2l11I6qrU4j2BmnVQnGs=
X-Google-Smtp-Source: ABdhPJw0oyfZhjJe4dZN2L8NEm4Lf9yzNCg/t/z4oJibMdoouJ9O1og0CQCN4x7Mhbhu27EPWMOZ8QDqDSIfPG0P4TQ=
X-Received: by 2002:a25:ba91:0:b0:64f:5f75:b6b1 with SMTP id
 s17-20020a25ba91000000b0064f5f75b6b1mr42627323ybg.368.1653826713396; Sun, 29
 May 2022 05:18:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtTWd58=86uj1n-Ac7WJ6zftigHEw+nkZqJtvyz9t+9tA@mail.gmail.com>
 <5995527a-8d4b-90c0-a335-11a026e520f3@ettus.com> <CAA=S3Pt2gA_J4RnxxLS7_vrJw8xBADrgD5uQNEiwHyq0Rg_Dog@mail.gmail.com>
In-Reply-To: <CAA=S3Pt2gA_J4RnxxLS7_vrJw8xBADrgD5uQNEiwHyq0Rg_Dog@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sun, 29 May 2022 16:48:22 +0430
Message-ID: <CAA=S3Ps3BhvqCOM_iaR0JO=OH7udHzK_RWdgYCTh+THrYEbAmQ@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
	usrp-users@lists.ettus.com
Message-ID-Hash: RBDIJXNSLAEYHSF25E6MMLB6UJJRFPTV
X-Message-ID-Hash: RBDIJXNSLAEYHSF25E6MMLB6UJJRFPTV
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's RFNOC image builder Unit in gr-ettus and Gnuradio?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RBDIJXNSLAEYHSF25E6MMLB6UJJRFPTV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4126820518884952753=="

--===============4126820518884952753==
Content-Type: multipart/alternative; boundary="000000000000c5a97105e0258928"

--000000000000c5a97105e0258928
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I read all UHD 4 Docs and GRCON videos but do these blocks in image
builder really work? I think they are not stable and have a bug ...
Does anyone work with them? ... So I manually change the USRP image core.
But in GUI I had ambiguity... So I ask.
Thanks very much

On Sun, May 29, 2022 at 4:46 PM sp h <stackprogramer@gmail.com> wrote:

> Yes, I read all UHD 4 Docs and GRCON videos but do these blocks in image
> builder really work? I think they are not stable and have a bug ...
> Does anyone work with them? ... So I manually change the USRP image core.
> But in GUI I had ambiguity... So I ask.
> Thanks very much
>
> On Sun, May 29, 2022 at 4:33 PM Marcus M=C3=BCller <marcus.mueller@ettus.=
com>
> wrote:
>
>> Hi Stackprogrammer,
>>
>> have you read
>>
>> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Running_the_I=
mage_Builder
>> ?
>>
>> Best regards,
>> Marcus
>>
>> DISCLAIMER: Any attached Code is provided As Is. It has not been tested
>> or validated as a product, for use in a deployed application or system, =
or
>> for use in hazardous environments. You assume all risks for use of the
>> Code. Use of the Code is subject to terms of the licenses to the UHD or
>> RFNoC code with which the Code is used. Standard licenses to UHD and RFN=
oC
>> can be found at https://www.ettus.com/sdr-software/licenses/.
>>
>> NI will only perform services based on its understanding and condition
>> that the goods or services (i) are not for the use in the production or
>> development of any item produced, purchased, or ordered by any entity wi=
th
>> a footnote 1 designation in the license requirement column of Supplement
>> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such =
a
>> company is not a party to the transaction.  If our understanding is
>> incorrect, please notify us immediately because a specific authorization
>> may be required from the U.S. Commerce Department before the transaction
>> may proceed further.
>>
>> On 29.05.22 10:48, sp h wrote:
>> > What's RFNOC image builder Unit in gr-ettus and Gnuradio?
>> > I can work with RFNOC blocks but I can not understand the application
>> RFNOC image
>> > builder Unit can anyone has any knowledge?
>> > Screenshot from 2022-05-29 13-15-41.png
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000c5a97105e0258928
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I read all UHD 4 Docs and GRCON videos but do these b=
locks in image builder really work? I think they are not stable and have=C2=
=A0a=C2=A0bug ...<div>Does anyone work with them? ... So I manually change =
the USRP image core. But in GUI I had=C2=A0ambiguity... So I ask.</div><div=
>Thanks very much</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sun, May 29, 2022 at 4:46 PM sp h &lt;<a href=3D"=
mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Y=
es, I read all UHD 4 Docs and GRCON videos but do these blocks in image bui=
lder really work? I think they are not stable and have=C2=A0a=C2=A0bug ...<=
div>Does anyone work with them? ... So I manually change the USRP image cor=
e. But in GUI I had=C2=A0ambiguity... So I ask.</div><div>Thanks very much<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Sun, May 29, 2022 at 4:33 PM Marcus M=C3=BCller &lt;<a href=3D"mail=
to:marcus.mueller@ettus.com" target=3D"_blank">marcus.mueller@ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi S=
tackprogrammer,<br>
<br>
have you read <br>
<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Runni=
ng_the_Image_Builder" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus=
.com/Getting_Started_with_RFNoC_in_UHD_4.0#Running_the_Image_Builder</a> ?<=
br>
<br>
Best regards,<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 29.05.22 10:48, sp h wrote:<br>
&gt; What&#39;s RFNOC image builder Unit in gr-ettus and Gnuradio?<br>
&gt; I can work with RFNOC blocks but I can not understand the application =
RFNOC image <br>
&gt; builder Unit can anyone has any knowledge?<br>
&gt; Screenshot from 2022-05-29 13-15-41.png<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000c5a97105e0258928--

--===============4126820518884952753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4126820518884952753==--
