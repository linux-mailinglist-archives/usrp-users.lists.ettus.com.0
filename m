Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DD66F0C0C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 20:37:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7F333844B7
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 14:37:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682620675; bh=0t09VP8M5v40+sADhHZnHArc7COWRqkWN7TtB9ZertE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Jh9N2SHRolb4Xi5exaTBKZC95YaHGBmVqS8cnhQgWoiQSNVHcRq9jz0icIZE68PKu
	 bmup5HJHtlz7VfEIWDPOsZwShH1Oj7YuduQMH8UAJsJqOIf2tEWjUeN9Ipb99LHjsj
	 DQ6bba7KuRrv3KcWnc1hcZ8WT9H/65EaMgNJRyBoMKnvvUDNVWlc1+aaeCZUBPP4KM
	 LZ1YHHjfZX6Xoig6CIhXjPdtYNZkHBhCT1mDa+sblvejEF8rSS7hYSo5hdFHL+Gbch
	 dIqC9NLQFFkGdUoQRZXjQHYiU1VI63khahjvsTKjN4ebef267iT4Cz4HqqN5qPxkCN
	 TPu5j5/5vNgyg==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 34AFD383BFB
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 14:37:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JSu09k5r";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-5eefa0a5561so83486606d6.1
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682620637; x=1685212637;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ho1aQ72ONnuCGZ3WOm4RWn5ngXVLmW2p0/S9/m+BDbQ=;
        b=JSu09k5rRHnp0WyeSOExnsdFzn6wchxheuN9EFmbodf7b2BEbsR9Nq2oXpJtHee1qd
         YT4qq1iBevNhlNd7oBnSqoRoSghuEyablq4l8lX5HyxUoVpQB+UonkMYTPNxk5nqmrkk
         PqH+OoqTwXor9+UrvnQ4q9NbKZwVeRgLLKUtfhNyZWhhLrf2rm09z0erWE9oi5KeqXvX
         ojzsNFIRPtII0u5eMM9/+aE18hZKqpMOL2+pMHbFRyD4xuMrIz1wJ/SdZpOYCii3pzxs
         Loyeb9laOaW9YpfR8c4wO2anImRMtKOHkr51Ed2ovBpOdWhhcmGXUc9MbjYILf2wZKqC
         6Snw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682620637; x=1685212637;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ho1aQ72ONnuCGZ3WOm4RWn5ngXVLmW2p0/S9/m+BDbQ=;
        b=T4fDrxk6t3Qs1muNJEGIjbDVzi7Uy6Z55FPo6OSA6LQrIrX1APpZBDaOlVEfZWVZsg
         hGgDFYt0GYr+n9ZWC3+C0YWm3QC3+C1RKfFAHbYXCNwLCzObsHEphmTCeHfTABamDhqg
         7PAd4OqU/5XQkq5EasfLPtvCtGzXUxLT/5Xz4BKRWa+Je0AfmTLdfSyGPOddVYacqiWz
         lcSUozigePJIDGFopkVLJ4M7VEr0ZS+EOks5p/qI5xsz6j7G6AQwfo/Jv3rDaOstHnwz
         s0ydnvSNMSAAVAI5XA+jInso8/in9fIP/9sMC2GhAgUHA5MWeSQusHDlfVCeNIpfNMhY
         tpwA==
X-Gm-Message-State: AC+VfDwWDurQNdERkb9dZkzo9Vy9sbi6wnjjkC4UX7dpL/jGGROlSknO
	xKuYdLP/Snfoy8xBt5JrBQqfTsBTS1Q=
X-Google-Smtp-Source: ACHHUZ7tXKG/SKUoXS9MZrpJuwQzxMINkw8CG+sQhAYxhpFA0fSZQwg1htPCEKBHZ8iN46mTP7qcmg==
X-Received: by 2002:a05:6214:29cc:b0:606:5103:9c98 with SMTP id gh12-20020a05621429cc00b0060651039c98mr3100988qvb.34.1682620637328;
        Thu, 27 Apr 2023 11:37:17 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o8-20020a0cf4c8000000b005ef5fc3a136sm5793431qvm.110.2023.04.27.11.37.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 11:37:17 -0700 (PDT)
Message-ID: <9d62a531-ed07-92e4-90dc-f1a1ba915b3c@gmail.com>
Date: Thu, 27 Apr 2023 14:37:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ@lists.ettus.com>
 <CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmail.com>
 <51f66780a3cea4b211dd54a8fcfadd63@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <51f66780a3cea4b211dd54a8fcfadd63@mail.gmail.com>
Message-ID-Hash: QGO6NXXYQZW36S6O4VFHKROMTOY3C4XX
X-Message-ID-Hash: QGO6NXXYQZW36S6O4VFHKROMTOY3C4XX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QGO6NXXYQZW36S6O4VFHKROMTOY3C4XX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2425495393596892619=="

This is a multi-part message in MIME format.
--===============2425495393596892619==
Content-Type: multipart/alternative;
 boundary="------------AZMvTHPc0a3sVFnqO228GnW0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AZMvTHPc0a3sVFnqO228GnW0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/04/2023 14:25, Ryan Retting wrote:
>
> It was said before, but I=E2=80=99ll reiterate that you shouldn=E2=80=99=
t assume=20
> auto-negotiation with the SFP+ NICs on the Ettus.=C2=A0 Depending on yo=
ur=20
> FPGA flavor, if it=E2=80=99s 10G it must be matched with a 10G transcei=
ver.=C2=A0 A=20
> 1G transceiver won=E2=80=99t work in a 10G port if the FPGA flavor=20
> configuration for the port is 10G.=C2=A0 See=20
> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started=
_fpga_update_flavors
>
> Thanks,
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 -Ryan
>
I'll re-emphasize that.=C2=A0=C2=A0 The PHY layer in the USRP product fam=
ilies (at=20
least for the SFP+ ports) is "de minimis".=C2=A0 They DO NOT
 =C2=A0 autonegotiate, because that would require FPGA logic that is bett=
er=20
used for DSP purposes.=C2=A0=C2=A0 So, they're FIXED SPEED.

The IP "stack" is just barely an IP "stack".=C2=A0 It doesn't support TCP=
=20
(again, at least for the SFP+ ports), nor would it, I suspect
 =C2=A0 comply with the "Host Requirements" document.=C2=A0=C2=A0=C2=A0=C2=
=A0 Think of it as a=20
peripheral connect bus that happens to use
 =C2=A0 commodity bits and pieces of network hardware, and the=20
thinnest-possible IP/UDP stack.


> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Thursday, April 27, 2023 11:14 AM
> *To:* jmaloyan@umass.edu
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: Ettus N321 SFP streaming issues
>
> I've used=C2=A0this for both USRP and general networking: Generic 10GBA=
SE-T=20
> SFP+ Copper RJ45 Transceiver Module - FS.com=20
> <https://www.fs.com/products/74680.html?attribute=3D26&id=3D412>=C2=A0.=
 The=20
> USRP is brand agnostic, so I generally just get "generic" branding. If=20
> you need more of these for specific brand devices, then I'd say to get=20
> for those brands. There are lots of manufacturers=C2=A0of these adapter=
s. I=20
> and others have found FS to be high quality at reasonable prices. I=20
> hope this is useful! - MLD
>
> On Thu, Apr 27, 2023 at 1:58=E2=80=AFPM <jmaloyan@umass.edu> wrote:
>
>     What adapters do you recommend?
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------AZMvTHPc0a3sVFnqO228GnW0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/04/2023 14:25, Ryan Retting
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:51f66780a3cea4b211dd54a8fcfadd63@mail.gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1"><br>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">It was said before, but I=E2=80=99ll reite=
rate that
          you shouldn=E2=80=99t assume auto-negotiation with the SFP+ NIC=
s on
          the Ettus.=C2=A0 Depending on your FPGA flavor, if it=E2=80=99s=
 10G it must
          be matched with a 10G transceiver.=C2=A0 A 1G transceiver won=E2=
=80=99t
          work in a 10G port if the FPGA flavor configuration for the
          port is 10G.=C2=A0 See <a
href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_s=
tarted_fpga_update_flavors"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_fpga_=
update_flavors</a></p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">Thanks,</p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Ryan</p>
      </div>
    </blockquote>
    I'll re-emphasize that.=C2=A0=C2=A0 The PHY layer in the USRP product=
 families
    (at least for the SFP+ ports) is "de minimis".=C2=A0 They DO NOT<br>
    =C2=A0 autonegotiate, because that would require FPGA logic that is
    better used for DSP purposes.=C2=A0=C2=A0 So, they're FIXED SPEED.<br=
>
    <br>
    The IP "stack" is just barely an IP "stack".=C2=A0 It doesn't support=
 TCP
    (again, at least for the SFP+ ports), nor would it, I suspect<br>
    =C2=A0 comply with the "Host Requirements" document.=C2=A0=C2=A0=C2=A0=
=C2=A0 Think of it as a
    peripheral connect bus that happens to use<br>
    =C2=A0 commodity bits and pieces of network hardware, and the
    thinnest-possible IP/UDP stack.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:51f66780a3cea4b211dd54a8fcfadd63@mail.gmail.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"> </p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <div style=3D"border:none;border-top:solid #e1e1e1
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class=3D"MsoNormal"><b>From:</b> Michael Dickens &lt;<a
              href=3D"mailto:michael.dickens@ettus.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">mi=
chael.dickens@ettus.com</a>&gt;
            <br>
            <b>Sent:</b> Thursday, April 27, 2023 11:14 AM<br>
            <b>To:</b> <a href=3D"mailto:jmaloyan@umass.edu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">jm=
aloyan@umass.edu</a><br>
            <b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            <b>Subject:</b> [USRP-users] Re: Ettus N321 SFP streaming
            issues</p>
        </div>
        <p class=3D"MsoNormal">=C2=A0</p>
        <div>
          <p class=3D"MsoNormal">I've used=C2=A0this for both USRP and ge=
neral
            networking:=C2=A0<a
              href=3D"https://www.fs.com/products/74680.html?attribute=3D=
26&amp;id=3D412"
              moz-do-not-send=3D"true">Generic 10GBASE-T SFP+ Copper RJ45
              Transceiver Module - FS.com</a>=C2=A0. The USRP is brand
            agnostic, so I generally just get "generic" branding. If you
            need more of these for specific brand devices, then I'd say
            to get for those brands. There are lots of manufacturers=C2=A0=
of
            these adapters. I and others have found FS to be high
            quality at reasonable prices. I hope this is useful! - MLD</p=
>
        </div>
        <p class=3D"MsoNormal">=C2=A0</p>
        <div>
          <div>
            <p class=3D"MsoNormal">On Thu, Apr 27, 2023 at 1:58=E2=80=AFP=
M &lt;<a
                href=3D"mailto:jmaloyan@umass.edu" moz-do-not-send=3D"tru=
e"
                class=3D"moz-txt-link-freetext">jmaloyan@umass.edu</a>&gt=
;
              wrote:</p>
          </div>
          <blockquote style=3D"border:none;border-left:solid #cccccc
            1.0pt;padding:0in 0in 0in
            6.0pt;margin-left:4.8pt;margin-right:0in">
            <p>What adapters do you recommend?</p>
            <p class=3D"MsoNormal">______________________________________=
_________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a></p>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------AZMvTHPc0a3sVFnqO228GnW0--

--===============2425495393596892619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2425495393596892619==--
