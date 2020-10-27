Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9429629B1CC
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 15:35:12 +0100 (CET)
Received: from [::1] (port=52320 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXQ45-0005OA-WD; Tue, 27 Oct 2020 10:35:10 -0400
Received: from mail-ej1-f48.google.com ([209.85.218.48]:37382)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kXQ42-0005BN-9j
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 10:35:06 -0400
Received: by mail-ej1-f48.google.com with SMTP id p9so2562510eji.4
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 07:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qPmYoAm/6vhGcsEd+u+o17ZQjOTCCcUsxIpzqL7dkoI=;
 b=v9xaqBenKyBNHPK9y1It8XDuCDJX3jDj3x3VyD8B0cd+BTRkalOMuzaH+IJDzwcFsF
 ocaI+eGq4wORE9mNziLWpzvhzfZn+JX0wip+u2+PhBz4bQIq9wOdNmfBoadRfKp6JeAy
 WtdOFwNuLkrCW4b08oHlRb7tmw6xYq3KD+tji/VZNV/bNfrEyXWEpdv6YkSNiRWpPOiy
 +lOBhB+cojwvUEmSjArIoc6Vv3X3l14loedfboD6eL9X4+vY1h0EVSj8vEIDBDwxlIkF
 E9kGZ8Cl3+XuqMG777Sh+BXZiVlWtZMXXXR5yxPnR2SsBUuPLN6SzV49P4DW6uWW9Abd
 sdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qPmYoAm/6vhGcsEd+u+o17ZQjOTCCcUsxIpzqL7dkoI=;
 b=niLlMfYuov8pV2zj3vp31tzC23xg0v/XvYzJ7bdmDyfqdi4Tuggv8JsP0G2FIeLlTT
 8OKKn489T+t1/fWkfJM3U+aeYt/FQ/j9vqWSwN+3ZftsVjSnZzBp7aMQO4SL89jYTY/e
 7hosB83cJH4Y2opQuO8kQEd8aPEx1QPzZGDVQW50s6XD7ZBYuAlsj5Vp57qipxDvoq8n
 ktR/WzPLMuCElbc4DQUdNyAqlGSVpYTbs1T0flo/SmrX9AVK4vxBZdpv6+4V4L/BLbe4
 rlzerJ2NIooXohjZe8l4AeCxB/zOYb8BWXCEWXxDr/mFPF0RLsJR4IQFDWJIChoytzEa
 RWsQ==
X-Gm-Message-State: AOAM533o54hfncimaoDXA6+0e5Qt2Sp4x2wEB0MvNM3SBHtSjxCG7jhl
 om1Q+NYI4g6tQ6YZE18cciLip3dCRTTkAagYGnMcO8YDtsrrwSUI
X-Google-Smtp-Source: ABdhPJz+WFEXrsV0ZGGxkfcp2F3+es8ijPRnZW73bzCi/2d/EX3eIhQdybjbhoBs11qqGRVXU7CVrOEJbnTv+2052cM=
X-Received: by 2002:a17:906:5f96:: with SMTP id
 a22mr2687755eju.168.1603809264077; 
 Tue, 27 Oct 2020 07:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB3312A7830750D47A990F15F7B8160@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312A7830750D47A990F15F7B8160@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Tue, 27 Oct 2020 10:34:12 -0400
Message-ID: <CAGNhwTPzCyeR6YQ7rTYVFfWxchg1g-qrom+vF34_2ybY9AO2bA@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 Autoboot
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============9195429498026227044=="
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

--===============9195429498026227044==
Content-Type: multipart/alternative; boundary="00000000000079417c05b2a7f1d9"

--00000000000079417c05b2a7f1d9
Content-Type: text/plain; charset="UTF-8"

Hi Jim - I replied to your query to "support@ettus.com" about 3 hours after
you sent it. Maybe that message didn't get through? I received nothing back
from the emails servers noting any issues. Please reply to your original
request & we'll try this again. - MLD
---

Dr Michael L Dickens
Principal RF Applications Engineer
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/ .

NI will only perform services based on its understanding and condition that
the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.


On Tue, Oct 27, 2020 at 9:17 AM Jim Palladino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I have an E320 that I'm trying to get to auto-boot when power is applied
> (so the button doesn't need pushed). I followed instructions here (
> https://kb.ettus.com/E320_Getting_Started_Guide#Enable_Auto_Booting) to
> set the autoboot flag, but it isn't working (not automatically booting when
> power is applied). Per the above-mentioned webpage, I sent a request to
> support@ettus.com for instructions to update the E320 RO and RW firmware.
> It's been about a week and I haven't heard anything back, so I'm wondering
> if anyone here knows how to update the firmware.
>
> Thanks,
> Jim
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000079417c05b2a7f1d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jim - I replied to your query to &quot;<a href=3D"mailt=
o:support@ettus.com">support@ettus.com</a>&quot; about 3 hours after you se=
nt it. Maybe that message didn&#39;t get through? I received nothing back f=
rom the emails servers noting any issues. Please reply to your original req=
uest &amp; we&#39;ll try this again. - MLD<br clear=3D"all"><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div dir=3D"ltr">---</div><p style=3D"color:rgb(0,0,0)"><span s=
tyle=3D"margin:0px;padding:0px;border:0px;font-variant:inherit;font-stretch=
:inherit;line-height:inherit;vertical-align:baseline;color:inherit"></span>=
</p><div dir=3D"ltr"><div dir=3D"ltr">Dr Michael L Dickens</div><div dir=3D=
"ltr">Principal RF Applications Engineer</div><div dir=3D"ltr">Ettus Resear=
ch Technical Support</div>Email:=C2=A0<a href=3D"mailto:support@ettus.com" =
target=3D"_blank">support@ettus.com</a><br>Web:=C2=A0<a href=3D"https://ett=
us.com/" target=3D"_blank">https://ettus.com/</a></div><p style=3D"color:rg=
b(0,0,0)"><span style=3D"margin:0px;padding:0px;border:0px;font-variant:inh=
erit;font-stretch:inherit;line-height:inherit;vertical-align:baseline;color=
:inherit"><font face=3D"monospace" size=3D"1">DISCLAIMER: Any attached Code=
 is provided As Is. It has not been tested or validated as a product, for u=
se in a deployed application or system, or for use in hazardous environment=
s. You assume all risks for use of the Code. Use of the Code is subject to =
terms of the licenses to the UHD or RFNoC code with which the Code is used.=
 Standard licenses to UHD and RFNoC can be found at=C2=A0<a href=3D"https:/=
/www.ettus.com/sdr-software/licenses/" rel=3D"noopener noreferrer" style=3D=
"font-variant:inherit;font-stretch:inherit;line-height:inherit;margin:0px;p=
adding:0px;border:0px;vertical-align:baseline" target=3D"_blank">https://ww=
w.ettus.com/sdr-software/licenses/</a>=C2=A0.</font></span></p><p style=3D"=
color:rgb(0,0,0)"><span style=3D"margin:0px;padding:0px;border:0px;font-var=
iant:inherit;font-stretch:inherit;line-height:inherit;vertical-align:baseli=
ne;color:inherit"><font face=3D"monospace" size=3D"1">NI will only perform =
services based on its understanding and condition that the goods or service=
s (i) are not for the use in the production or development of any item prod=
uced, purchased, or ordered by any entity with a footnote 1 designation in =
the license requirement column of Supplement No. 4 to Part 744, U.S. Export=
 Administration Regulations and (ii) such a company is not a party to the t=
ransaction.=C2=A0 If our understanding is incorrect, please notify us immed=
iately because a specific authorization may be required from the U.S. Comme=
rce Department before the transaction may proceed further.</font></span></p=
></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Oct 27, 2020 at 9:17 AM Jim Palladino via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"margin:0px;font-size:12pt">I have an E320 that I&#39;m trying=
 to get to auto-boot when power is applied (so the button doesn&#39;t need =
pushed). I followed instructions here=C2=A0<span style=3D"font-size:12pt">(=
</span><a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide#Enable_Au=
to_Booting" rel=3D"noopener noreferrer" style=3D"font-size:12pt" target=3D"=
_blank">https://kb.ettus.com/E320_Getting_Started_Guide#Enable_Auto_Booting=
</a><span style=3D"font-size:12pt">)
 to set the autoboot flag, but it isn&#39;t working (not automatically boot=
ing when power is applied). Per the above-mentioned webpage, I sent a reque=
st to <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.=
com</a> for instructions to update the E320 RO and RW firmware. It&#39;s be=
en about a week and I haven&#39;t
 heard anything back, so I&#39;m wondering if anyone here knows how to upda=
te the firmware.</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size:12pt"><br=
>
</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size:12pt">Tha=
nks,</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size:12pt">Jim=
</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size:12pt"><br=
>
</span></div>
<div style=3D"margin:0px;font-size:12pt"><br style=3D"font-size:16px;backgr=
ound-color:rgb(255,255,255)">
</div>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000079417c05b2a7f1d9--


--===============9195429498026227044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9195429498026227044==--

