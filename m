Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CCE3716A2
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 16:30:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA108384127
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 10:30:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KfrOEcuC";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id EF2A2383F67
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 10:29:05 -0400 (EDT)
Received: by mail-qt1-f175.google.com with SMTP id p6so2070040qtk.13
        for <usrp-users@lists.ettus.com>; Mon, 03 May 2021 07:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=DOqATcNbSjVNA09c0Jxcl5ifAXTYxc4vSgMSHn0Oltw=;
        b=KfrOEcuCd4NmjNysIMIYq/LHzD+Jg8G+JEPtvQjQnv3j7OhUjqUG1q7Zj1zM5Rq6pn
         gDKpSr/SmHVqAH5kNvNJPNgJRGIo83bAG0J7XvSxxvUJsoox1Lue9ZRMbzMogwMbFhE+
         7SBlPQRK2y0n1v7G7OywNKZVtOwS8jlEjxfCf5VViEpQCQUkkah4CFut1b7PAEWGypxs
         +xIhkE17u0nDFNLLY/CQwZz4Qv4aEeJULX9+CrVYpxMxDixjHBvyu1KknLcQGhRIQec6
         aWhhm2uYRvSVhA6BYDKRFSPAFAZL03V+6qAiB14MEiuNBwo2CWuh6IgCKxWpT6qo0sW1
         EFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=DOqATcNbSjVNA09c0Jxcl5ifAXTYxc4vSgMSHn0Oltw=;
        b=VH36y0HF0ypTdvGjampZ9wuo53jlQANHrB1dFJuUbXuRLxPBSQnLKN/RS7oq0zn75m
         bFUy1R1KV/aOljW0ZLK/rnxuEFe0SwisZV/XTmQWk1gt9VPcay5FrMhmAWC5rF3fWDZp
         B/yC7wG3WK2/FqxKeOnxky3EjnPze1XSHk1XKFeDMAsCeCPU9w+MafHMpphC/ZpbWuwG
         bNSLt95RIO4uO1pIuK9i8INZnl3VjLOjI+K/Ln25/M/Xkd0UmRrxH/2Hve/DH43h9VuE
         BjAIeLzOv5hfaseG8DKBMRhogtz/wg+hVucVec49bSPRG3ZfSu8F+QZO3JjfKWQvRu8Z
         fRsg==
X-Gm-Message-State: AOAM530Nsy5+dLeYa97tkdoTl1Bvz8asr1gwcAzHfm+7Zwy3uzXObTRg
	kX1i0AQAFk6YpRALXLPiFA3c3nctPrAFsg==
X-Google-Smtp-Source: ABdhPJymWbAETTJOXp0AE5cS5IABKZWuK7mjppTh1SW1n6y/QZmgVdnrRuNKQlvoCqGDt5VFozsWCA==
X-Received: by 2002:ac8:74cf:: with SMTP id j15mr16555465qtr.345.1620052144935;
        Mon, 03 May 2021 07:29:04 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id o12sm5213014qtq.96.2021.05.03.07.29.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 07:29:04 -0700 (PDT)
Message-ID: <609008AF.7080803@gmail.com>
Date: Mon, 03 May 2021 10:29:03 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <026715b28cc84de89c7f38eb4d82bffa@mail03.iis.fhg.de>
In-Reply-To: <026715b28cc84de89c7f38eb4d82bffa@mail03.iis.fhg.de>
Message-ID-Hash: YPCPEA7IURCOOWZGO5KRZHQLJ2TQTPBG
X-Message-ID-Hash: YPCPEA7IURCOOWZGO5KRZHQLJ2TQTPBG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Changing RX frequency (B210) at runtime using the message interface (GnuRadio)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPCPEA7IURCOOWZGO5KRZHQLJ2TQTPBG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6337432398015794857=="

This is a multi-part message in MIME format.
--===============6337432398015794857==
Content-Type: multipart/alternative;
 boundary="------------050409020603040800030203"

This is a multi-part message in MIME format.
--------------050409020603040800030203
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/03/2021 05:47 AM, Nieland, Michael wrote:
>
> Dear all,
>
> I am using two B210 USRP=92s to generate and receive DQPSK Signals=20
> around 1.53 GHz (two TX and two  RX channels). The USRP=92s use FW=20
> Version 8.0 and FPGA Version 16.0 (Hardware Revision 4). I am having=20
> some trouble properly changing the RX frequency at runtime using the=20
> message interface. When the RX frequency is varied using a QT Gui=20
> Range slider I encounter no issues. However, in my application I have=20
> to use the message interface. In general, I assume that my pmt message=20
> structure must be correct, since it works fine when the frequency is=20
> only changed by a few MHz.  Also other commands (like setting tx and=20
> rx gains) work as expected. If, however, the frequency is requested to=20
> be set to let=92s say 2 GHz from 1.53 GHz, an overflow is indicated and=
=20
> the respective USRP Channel completely stops streaming (does not=20
> restart).
>
> I tried using the =93freq=94 command (both with indicating the channel =
and=20
> without since it should not make a difference on the B210) and the=20
> tune_request. I tried several different message structures but for=20
> some reason it only works for the TX Usrp (When using the message port=20
> of the TX Usrp to change frequency it is indicating some underflows=20
> right when the frequency is changed and is then working fine without=20
> any underflows or other issues).
>
> To eliminate the error I am right now testing in an isolated FG with=20
> only a USRP source and a Message Edit Box (FG is attached) and the=20
> issue occurs here as well.
>
> Any help would be appreciated and maybe someone was/is facing the same=20
> issue?
>
> Best regards
>
> Michael
>
>
Have you tried using the "direct" interface for tuning--bypassing, for=20
now, the message infrastructure?  Just use your rx_freq
   variable directly in the UHD source block frequency input field? If=20
that also produces overruns during tuning, then the issue
   is deeper inside than the message interface.





--------------050409020603040800030203
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/03/2021 05:47 AM, Nieland,
      Michael wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:026715b28cc84de89c7f38eb4d82bffa@mail03.iis.fhg.de"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            lang=3D"EN-US">Dear all, <o:p>
            </o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I am using two B210
            USRP=92s to generate and receive DQPSK Signals around 1.53 GH=
z
            (two TX and two =A0RX channels). The USRP=92s use FW Version =
8.0
            and FPGA Version 16.0 (Hardware Revision 4). I am having
            some trouble properly changing the RX frequency at runtime
            using the message interface. When the RX frequency is varied
            using a QT Gui Range slider I encounter no issues. However,
            in my application I have to use the message interface. In
            general, I assume that my pmt message structure must be
            correct, since it works fine when the frequency is only
            changed by a few MHz.=A0 Also other commands (like setting tx
            and rx gains) work as expected. If, however, the frequency
            is requested to be set to let=92s say 2 GHz from 1.53 GHz, an
            overflow is indicated and the respective USRP Channel
            completely stops streaming (does not restart).=A0 <o:p>
            </o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I tried using the =93=
freq=94
            command (both with indicating the channel and without since
            it should not make a difference on the B210) and the
            tune_request. I tried several different message structures
            but for some reason it only works for the TX Usrp (When
            using the message port of the TX Usrp to change frequency it
            is indicating some underflows right when the frequency is
            changed and is then working fine without any underflows or
            other issues).
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">To eliminate the erro=
r I
            am right now testing in an isolated FG with only a USRP
            source and a Message Edit Box (FG is attached) and the issue
            occurs here as well.=A0
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Any help would be
            appreciated and maybe someone was/is facing the same issue?<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Michael<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p><br>
        </p>
      </div>
    </blockquote>
    Have you tried using the "direct" interface for tuning--bypassing,
    for now, the message infrastructure?=A0 Just use your rx_freq<br>
    =A0 variable directly in the UHD source block frequency input field?=A0
    If that also produces overruns during tuning, then the issue<br>
    =A0 is deeper inside than the message interface.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050409020603040800030203--

--===============6337432398015794857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6337432398015794857==--
