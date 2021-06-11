Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 803403A43AC
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 16:00:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C60BA3847B3
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 10:00:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WneBlNjy";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 97CCE3847A6
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 09:58:47 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id u13so16546577qvt.7
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 06:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=4I+e5Jcw18PDTS0QMZXgI+6Oxbz+GbrQXO3RMPzHh6c=;
        b=WneBlNjyGvL/AYuqhvxxJxXc7g1SB27YU0iJqQD5OscJJNmmWpAJXGILmNYNEg7gpt
         XVaCSlpp2JU4W9Ck3BxiwxJEDmRU+4uDrabSavd4kzgGuelyYqao1wd54ElTxzGFnncv
         O57PPqsWBtth4yVVcCiOmHt+QLfSGOIAU6LtSbiInPhnIu5DLR8VxCcsPihk4CliUtbN
         JNbA0+C38/2jDiSXfViTLwzzT8xoRd6o0IvUezjyJPenbjFW6kGciuhklqgq5DJuLY9B
         OeSig/QXMR55O+394bvHbT6f+8yq243WeTK9j327LvTAiyUbuI26/xC4LE2w854UCl0v
         kEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=4I+e5Jcw18PDTS0QMZXgI+6Oxbz+GbrQXO3RMPzHh6c=;
        b=dOJ9DM15myDImCTNQKyJVh29qALy38wwPPbzbaNLmSPJSXE+xAloOLEPvtaY6o+VNF
         FGTClG9yiFlLNA/vsMFBTleCskovIxhXUtpjVlQtx+ARgoJPBThCn681y7HAo3Y7VK/3
         sQVcIZDSqJBiUGK0JaUgqRI68e2utj/tDEQRMr8Qm1xQ9tZxdzWFsFV0V4Efov1fAGus
         JE/iN9YIzXv238EQj58r/ewAZPEbwxAB4JRSRl/Jn/lzK1axbu6QqbGy1gthB+8gLwn4
         hC+Se92xr7ej6lKfhrCFWTTmu3i532Stq7JOQ0SCSavneGNbcRGsK77rZwBD4mwEznQl
         8Fvg==
X-Gm-Message-State: AOAM531iCGpZ8pUymRBZEQVZPk423mVeEqHmqMMxeRq7mQrDFRe7/jSJ
	Im8gGYqpsSwiqBRjM9bE9/0CMHYErVTJEg==
X-Google-Smtp-Source: ABdhPJw9cpr4fgYSrJybv5rFKH6T9dzH96JwV2WNdm6m5ViBtta6l0iBafAqncWTizBwlf6BJfDRow==
X-Received: by 2002:a0c:e891:: with SMTP id b17mr1067004qvo.26.1623419926670;
        Fri, 11 Jun 2021 06:58:46 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id z188sm4282528qkd.68.2021.06.11.06.58.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 06:58:46 -0700 (PDT)
Message-ID: <60C36C0F.7040209@gmail.com>
Date: Fri, 11 Jun 2021 09:58:39 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jim Palladino <jim@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com> <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com>,<60C3679C.8070900@gmail.com> <MN2PR12MB331229296F2D645E866AD0C4B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB331229296F2D645E866AD0C4B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: YKAF7K44TTJMTWJPFX7C4OVY2BGGTN2G
X-Message-ID-Hash: YKAF7K44TTJMTWJPFX7C4OVY2BGGTN2G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YKAF7K44TTJMTWJPFX7C4OVY2BGGTN2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5740255702230371969=="

This is a multi-part message in MIME format.
--===============5740255702230371969==
Content-Type: multipart/alternative;
 boundary="------------020106040100000802020500"

This is a multi-part message in MIME format.
--------------020106040100000802020500
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/11/2021 09:45 AM, Jim Palladino wrote:
> Hi Marcus,
>
> Right -- the output of the Octoclock is 5V. I'm not seeing how the=20
> N320 can accept that as an input. The knowledge base article says the=20
> N320 expects 5Vpp at the 1pps input. But the schematics/parts data=20
> sheet for the input buffer don't seem to support that . . . unless I'm=20
> missing something.
>
> Thanks,
> Jim
It certainly looks like a potential problem, but I haven't heard of=20
anyone having 1PPS failure issues on the N320 when used with
   Octoclock--pretty sure it was tested with Octoclock prior to=20
release.  But I'll check with R&D.


>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, June 11, 2021 9:39 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: N320 1PPS input voltage
> On 06/11/2021 09:11 AM, Marcus M=FCller wrote:
> > Hello Jim,
> >
> >
> > hm, that knowledge base article must be wrong: The octoclock=20
> internally only has a 3.3V
> > supply. But before I say something wrong here, let me check back.
> >
> >
> > Best regards,
> >
> > Marcus
> The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which
> appear to have a 5V Vcc.
>
> >
> >
> > On 11.06.21 14:17, Jim Palladino wrote:
> >
> >> Hello,
> >>
> >> We are planning on using an octoclock with several devices,=20
> including an N320. The
> >> octoclock outputs a 5V 1pps signal, but I'm confused about the N320=20
> 1pps input.
> >>
> >> According to=20
> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_N3=
20_N321-29-3A&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&=
r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCWF4BKKIX7QR3S=
O2LJ3yD1MyEElYsX5a8WMs&s=3DTdFHQJNItGehIsL1D4yXezIfq_vO05AvF1_lMSyNpHs&e=3D
> >> "PPS - Pulse Per Second Using a PPS signal for timestamp=20
> synchronization requires a
> >> square wave signal with the following a 5Vpp amplitude."
> >>
> >> If I look at the schematics for the N320, on page 15,
> >>=20
> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_im=
ages_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvim=
EN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwp=
Yx0&m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24=
LgJjEofkuFwgAsHTs9iHhgMuBg&e=3D)=20
> they show that the input
> >> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the=20
> schematics.
> >>
> >> According to the datasheet, the absolute maximum rating on the=20
> input is 4.3V.
> >>=20
> "https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_=
pdf_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS=
_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhM=
yrqBTMv_Rx01Xg&e=3D"
> >>
> >> So, I'm not sure how the N320 can safely accept a 5V input (from=20
> the octoclock or other
> >> device).
> >>
> >> Thanks,
> >> Jim
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------020106040100000802020500
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/11/2021 09:45 AM, Jim Palladino
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:MN2PR12MB331229296F2D645E866AD0C4B8349@MN2PR12MB3312.namprd12=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi Marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Right -- the output of the Octoclock is 5V. I'm not seeing how
        the N320 can accept that as an input. The knowledge base article
        says the N320 expects 5Vpp at the 1pps input. But the
        schematics/parts data sheet for the input buffer don't seem to
        support that . . . unless I'm missing something.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
    </blockquote>
    It certainly looks like a potential problem, but I haven't heard of
    anyone having 1PPS failure issues on the N320 when used with<br>
    =A0 Octoclock--pretty sure it was tested with Octoclock prior to
    release.=A0 But I'll check with R&amp;D.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:MN2PR12MB331229296F2D645E866AD0C4B8349@MN2PR12MB3312.namprd12=
.prod.outlook.com"
      type=3D"cite">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Friday, June 11, 2021 9:39 AM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: N320 1PPS input voltage</font>
        <div>=A0</div>
      </div>
      <div class=3D"BodyFragment"><font size=3D"2"><span
            style=3D"font-size:11pt;">
            <div class=3D"PlainText">On 06/11/2021 09:11 AM, Marcus M=FCl=
ler
              wrote:<br>
              &gt; Hello Jim,<br>
              &gt;<br>
              &gt;<br>
              &gt; hm, that knowledge base article must be wrong: The
              octoclock internally only has a 3.3V<br>
              &gt; supply. But before I say something wrong here, let me
              check back.<br>
              &gt;<br>
              &gt;<br>
              &gt; Best regards,<br>
              &gt;<br>
              &gt; Marcus<br>
              The 1PPS outputs on the Octoclock are bufered by 7404
              inverters, which <br>
              appear to have a 5V Vcc.<br>
              <br>
              &gt;<br>
              &gt;<br>
              &gt; On 11.06.21 14:17, Jim Palladino wrote:<br>
              &gt;<br>
              &gt;&gt; Hello,<br>
              &gt;&gt;<br>
              &gt;&gt; We are planning on using an octoclock with
              several devices, including an N320. The<br>
              &gt;&gt; octoclock outputs a 5V 1pps signal, but I'm
              confused about the N320 1pps input.<br>
              &gt;&gt;<br>
              &gt;&gt; According to (<a class=3D"moz-txt-link-freetext" h=
ref=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.co=
m_N320_N321-29-3A&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_=
CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-=
9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3DTdFHQJNItGehIsL1D4yXez=
Ifq_vO05AvF1_lMSyNpHs&amp;e=3D">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__kb.ettus.com_N320_N321-29-3A&amp;d=3DDwIF-g&amp;c=3DeuGZstc=
aTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsP=
dD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=
=3DTdFHQJNItGehIsL1D4yXezIfq_vO05AvF1_lMSyNpHs&amp;e=3D</a><br>
              &gt;&gt; "PPS - Pulse Per Second Using a PPS signal for
              timestamp synchronization requires a<br>
              &gt;&gt; square wave signal with the following a 5Vpp
              amplitude."<br>
              &gt;&gt;<br>
              &gt;&gt; If I look at the schematics for the N320, on page
              15,<br>
              &gt;&gt; (<a moz-do-not-send=3D"true"
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.c=
om_images_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-g&amp;c=3Deu=
GZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHa=
uOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&=
amp;s=3D6JTHdP9IoYFRQhn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D">https://url=
defense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_images_f_f4_USRP=
-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7j=
XrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx=
0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3D6JTHdP9IoYF=
RQhn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D</a>)
              they show that the input<br>
              &gt;&gt; 1pps signal goes through an NC7SV157. Vcc for
              that is 3.3V in the schematics.<br>
              &gt;&gt;<br>
              &gt;&gt; According to the datasheet, the absolute maximum
              rating on the input is 4.3V.<br>
              &gt;&gt; "<a moz-do-not-send=3D"true"
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi=
.com_pdf_datasheet_nc7sv157-2Dd.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3DXPmi=
CDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx01Xg&amp;e=3D">https://urldefense.proo=
fpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_pdf_datasheet_nc7sv157-2Dd=
.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&a=
mp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKK=
IX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTM=
v_Rx01Xg&amp;e=3D</a>"<br>
              &gt;&gt;<br>
              &gt;&gt; So, I'm not sure how the N320 can safely accept a
              5V input (from the octoclock or other<br>
              &gt;&gt; device).<br>
              &gt;&gt;<br>
              &gt;&gt; Thanks,<br>
              &gt;&gt; Jim<br>
              &gt;&gt;<br>
              &gt;&gt;<br>
              &gt;&gt; _______________________________________________<br=
>
              &gt;&gt; USRP-users mailing list --
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              &gt;&gt; To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list -- <a class=3D"moz-txt-link-ab=
breviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a><br>
              &gt; To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
              _______________________________________________<br>
              USRP-users mailing list -- <a class=3D"moz-txt-link-abbrevi=
ated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a><br>
              To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
            </div>
          </span></font></div>
    </blockquote>
    <br>
  </body>
</html>

--------------020106040100000802020500--

--===============5740255702230371969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5740255702230371969==--
