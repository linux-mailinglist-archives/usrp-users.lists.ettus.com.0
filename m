Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1150E7EE88B
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 21:56:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49A3738516A
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 15:56:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700168161; bh=zWqjVjtmSDZufqZ4KnylXebojedCkm40jaxYoLlLDu8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nw9DM7ZxMaR0/24N1QJVrPO9qJ6muw3WON/FnZZT2sI+uWWik8AwvxqnWwS3XEeuG
	 QJ5ACcC3KnOIe7K7NKGsZIH2v+pLlnKoINMLnznKbV4DAlPpnSUoejwFwfQjJUOcxc
	 Il3SwLOZ8W5S3RxNEXNIalcYG5RVf0jLrmS6L8IHsqZr4T6tZrxkQA+nSA3ok86xLs
	 gVQdMWH1jUHaqmIOTEKY8OLW2fsZnYBbUmHJrXjNN7Mha/3Oec0Wk7O/mLx+bJfRH3
	 s4tvjbhs4FwKuTw+HSzKMb7CTeW/k/QxTobpVra3yWx21hORCu1Wf8szHkpkVUMmL1
	 ItinnuUSs+ObQ==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E9C10384D07
	for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 15:55:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c2B/z/jS";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-41c157bbd30so7607141cf.0
        for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 12:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700168107; x=1700772907; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+b6i11zAsdfPXkChuKzGqTuCyUZCePQLxjjDByIsKj8=;
        b=c2B/z/jS8ygOIckgbpQMtHr4MGC9eVJ7W63WDAQXIkZBu6revKTMixGHtdRfQePj8q
         1Up+5sus1lDisxjuTC8QQatSaNP/V0BiSfKj3PjqjZ4PTUrHzPZ2VOllnsEGOVHRp6/P
         xxSy2VMEDmHsP8U/ypyRQq0L8TLDpO7v1Ig5CreTrdo/DS/r0xLesY+YeP+odOrAZ6lH
         aIgzW46Gwuvz+7Gz90UcZdmPRVhAtDHnD+sBPq3omkQxb/oS5zRLUhkWFpK95s1zNCVs
         8vNN4N+hu66T57OfXK1w6VSY6wescuefUyFNRcpcbLP+BOZBflylxfIr1VOSfWsVaAY9
         V+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700168107; x=1700772907;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+b6i11zAsdfPXkChuKzGqTuCyUZCePQLxjjDByIsKj8=;
        b=eerRGP51Y6MtFkyarAuolmtaF9PhxpIp5SSMPbcaha145B9nYxTQBt1lQGZxMthRnH
         6UnZkX6Yqo9C/8HhPH2S/4IY/Vl1CXzZYM3UFIFptmRfRxMAKlfTwm8bF4WSuocGtnrs
         MVJw2GQFzvZ3h2sGvkbCSWcwDrFlfGCKN6secQ+F+MzOADGJPBnGIJ421LC/EWiAWUd8
         ku7zkCRyfqm21t/izIA3q5HvU2J+caPG8BpA09tfIxshn/gU2o0WhI2jXlce87GkKz5j
         doR9J88k3QyuxzQM8ve+Y8rF9bsF1S4lZX8XaN7F+wtrm4zjE1x7DiwODXGifKUntVv/
         J3RA==
X-Gm-Message-State: AOJu0YwstJSfBSyH+Wlp46M04Q0q3kZA6TfxTwuU5eb4l07E9eUEtsYn
	uPp5/l+eihv/QkmTqlvlq/k=
X-Google-Smtp-Source: AGHT+IGs635Fsw61nkXVfRDb3OQtTjGSm5GiqTc9VaewbbaK94UuhtqCthHm5OhwfXZAT1LFC0oDTA==
X-Received: by 2002:a05:622a:13:b0:421:c996:88b2 with SMTP id x19-20020a05622a001300b00421c99688b2mr11389576qtw.35.1700168107250;
        Thu, 16 Nov 2023 12:55:07 -0800 (PST)
Received: from [192.168.2.170] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id he34-20020a05622a602200b0041e383d527esm55573qtb.66.2023.11.16.12.55.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 12:55:07 -0800 (PST)
Message-ID: <9737efed-cab8-4e86-abc5-75ff05df9a44@gmail.com>
Date: Thu, 16 Nov 2023 15:54:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <2b3d74f8-df85-4d60-9b1e-7a3e7d1b20fc@gmail.com>
 <BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: ADV4KHCQ7NRNMLRKFLMMPP5PGNJKMXAO
X-Message-ID-Hash: ADV4KHCQ7NRNMLRKFLMMPP5PGNJKMXAO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: peek32/poke32 slow
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ADV4KHCQ7NRNMLRKFLMMPP5PGNJKMXAO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2626607078956607198=="

This is a multi-part message in MIME format.
--===============2626607078956607198==
Content-Type: multipart/alternative;
 boundary="------------Ub5jk5UzAoouibh02DzSaYSm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Ub5jk5UzAoouibh02DzSaYSm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/11/2023 15:50, Alvin.Begaye@gd-ms.com wrote:
>
> I=E2=80=99m running the SW directly on the ARM of the X410, so that sho=
uld=20
> rule out network latency.
>
The ARM on the X410 is (AFAIR) dual-core, and not very speedy.=C2=A0 Even=
=20
when you're talking locally, you
 =C2=A0 still go through the network stack (localhost).=C2=A0 So even tho=
ugh=20
there's no actual network *hardware*
 =C2=A0 involved, you're still paying the network stack costs.

> When using the UHD API on the ARM does it still go through the MPM?
>
Yes, as far as I know.

> Is there a way to bypass MPM?
>
Well, all the source code is freely available--so you could figure out=20
how MPM turns those calls into actual "knobs"
 =C2=A0 being tweaked on the hardware, and tweak those knobs yourself in =
your=20
own code.


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, November 16, 2023 1:36 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: peek32/poke32 slow
>
> *External E-mail *--- CAUTION: This email originated from outside=20
> GDMS. Do not click links or open attachments unless you recognize the=20
> sender and know the content is safe.
>
> On 16/11/2023 15:11, Alvin.Begaye--- via USRP-users wrote:
>
>     Hi I am using an x410, and running through the init_gain_block
>     example,=C2=A0=C2=A0 using the high resolution timer I am getting t=
hese
>     results, which seem really slow, is there a faster way to
>     read/write registers?
>
> I believe that on the X410, operations like that actually end up going=20
> through the MPM process that is running in the Linux PS
> =C2=A0 slice on the FPGA.
>
> One can expect to pay various "latency tolls".=C2=A0 There's=20
> app-land-to-kernel latency on your host, latency of the network stack,
> =C2=A0 latency of the network media itself, and then all of those thing=
s in=20
> reverse order on the X410 side, since MPM is just a piece
> =C2=A0 of software running as a normal app process in the Linux PS on t=
he X410.
>
> It has never been the case that what amounts to "session parameter"=20
> settings were intended to be super-fast, because in general,
> =C2=A0 those things happen at a MUCH MUCH slower pace than the signals=20
> themselves.
>
>
>
>     Time 481.835 micro seconds.
>
>     Gain value read/write loopback successful!
>
>     Here is the code.
>
>     =C2=A0=C2=A0=C2=A0 t1 =3D high_resolution_clock::now();
>
>     gain_block->set_gain_value(new_gain_value);
>
>     =C2=A0=C2=A0=C2=A0 const uint32_t gain_value_read =3D gain_block->g=
et_gain_value();
>
>     =C2=A0=C2=A0=C2=A0 t2 =3D high_resolution_clock::now();
>
>     delta_time =3D duration_cast<duration<double>>(t2-t1);
>
>     std::cout << std::flush ;//<< std::endl;
>
>     std::cout << "Time " << delta_time.count()*1000000.0 << " micro
>     seconds." << std::endl;
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>

--------------Ub5jk5UzAoouibh02DzSaYSm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/11/2023 15:50,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Alvin.Begaye@g=
d-ms.com">Alvin.Begaye@gd-ms.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">I=E2=80=99m running the SW directly on the=
 ARM of
          the X410, so that should rule out network latency.=C2=A0
        </p>
      </div>
    </blockquote>
    The ARM on the X410 is (AFAIR) dual-core, and not very speedy.=C2=A0 =
Even
    when you're talking locally, you<br>
    =C2=A0 still go through the network stack (localhost).=C2=A0 So even =
though
    there's no actual network *hardware*<br>
    =C2=A0 involved, you're still paying the network stack costs.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">When using the UHD API on the ARM does it
          still go through the MPM?</p>
      </div>
    </blockquote>
    Yes, as far as I know.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is there a way to bypass MPM?</p>
      </div>
    </blockquote>
    Well, all the source code is freely available--so you could figure
    out how MPM turns those calls into actual "knobs"<br>
    =C2=A0 being tweaked on the hardware, and tweak those knobs yourself =
in
    your own code.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Thursday, November 16, 2023 1:36 PM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [USRP-users] Re: peek32/poke32 slow<o:p></o=
:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <table class=3D"MsoNormalTable" style=3D"background:#3F7FBF"
            cellspacing=3D"3" cellpadding=3D"0" border=3D"0">
            <tbody>
              <tr>
                <td style=3D"padding:.75pt .75pt .75pt .75pt">
                  <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-align:ce=
nter;line-height:12.0pt"
                    align=3D"center">
                    <strong><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:yellow">External
                        E-mail
                      </span></strong><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:yellow">---
                      CAUTION: This email originated from outside GDMS.
                      Do not click links or open attachments unless you
                      recognize the sender and know the content is safe.
                    </span><o:p></o:p></p>
                </td>
              </tr>
            </tbody>
          </table>
          <p class=3D"MsoNormal">=C2=A0 <o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">On 16/11/2023 15:11, Alvin.Begaye---
              via USRP-users wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi I am
              using an x410, and running through the init_gain_block
              example,=C2=A0=C2=A0 using the high resolution timer I am g=
etting
              these results, which seem really slow, is there a faster
              way to read/write registers?<o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal">I believe that on the X410, operations
            like that actually end up going through the MPM process that
            is running in the Linux PS<br>
            =C2=A0 slice on the FPGA.<br>
            <br>
            One can expect to pay various "latency tolls".=C2=A0 There's
            app-land-to-kernel latency on your host, latency of the
            network stack,<br>
            =C2=A0 latency of the network media itself, and then all of t=
hose
            things in reverse order on the X410 side, since MPM is just
            a piece<br>
            =C2=A0 of software running as a normal app process in the Lin=
ux
            PS on the X410.<br>
            <br>
            It has never been the case that what amounts to "session
            parameter" settings were intended to be super-fast, because
            in general,<br>
            =C2=A0 those things happen at a MUCH MUCH slower pace than th=
e
            signals themselves.<br>
            <br>
            <br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">Time 481.83=
5
                micro seconds.</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">Gain value
                read/write loopback successful!</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0</spa=
n><o:p></o:p></p>
            <p class=3D"MsoNormal">Here is the code.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=
=C2=A0 t1 =3D
                high_resolution_clock::now();</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=
=C2=A0
                gain_block-&gt;set_gain_value(new_gain_value);</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=
=C2=A0 const
                uint32_t gain_value_read =3D
                gain_block-&gt;get_gain_value();</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=
=C2=A0 t2 =3D
                high_resolution_clock::now();</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0</spa=
n><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=
=C2=A0
                delta_time =3D
                duration_cast&lt;duration&lt;double&gt;&gt;(t2-t1);</span=
><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=
=C2=A0
                std::cout &lt;&lt; std::flush ;//&lt;&lt; std::endl;</spa=
n><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=
=C2=A0
                std::cout &lt;&lt; "Time " &lt;&lt;
                delta_time.count()*1000000.0 &lt;&lt; " micro seconds."
                &lt;&lt; std::endl;</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><br>
              <br>
              <o:p></o:p></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------Ub5jk5UzAoouibh02DzSaYSm--

--===============2626607078956607198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2626607078956607198==--
