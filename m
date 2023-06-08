Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0C272828B
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 16:21:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 802F5380BEA
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 10:21:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686234110; bh=8wy1WNgRDLaNbA27WyW2oeagL8Zojd11CyBt5hvF9iM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HFP+L11F0ImBeEx3zosRJHBDcDXP3xLeeVeamH/+kav2ETlNZeS8eXqfpPZmwBG+c
	 eB14wsV//IAhI5TxCcKY6i+HWYvKMohNNB4a95RHYQIMVs++stVwHZ1V2Xbu3AOQvY
	 2xQ9gempn+wZ6/AdUSv/YwKMQ/YC+UL4EaA1QC1kdGzGoKz4ZOh8nQYf0BSpWBn8Pr
	 SM5GnH4q0k9G9GeD8lpOoLq70HYyMchSeYLyTOrvvteSgtUQ9XkQGgYu882UvAhxwz
	 Pysqf2tfwhk4+RrfkOen0tvMdIN9a9ikqS+xOHQyzA4d4JYmw6wQcFuEYqxxj2uRy3
	 kqCO1yCoRnesg==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id DD41F384980
	for <usrp-users@lists.ettus.com>; Thu,  8 Jun 2023 10:21:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jP3dtH2E";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-3f6c6020cfbso4742261cf.2
        for <usrp-users@lists.ettus.com>; Thu, 08 Jun 2023 07:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686234084; x=1688826084;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VQPvIn/e8Mc1M0TTKreMGDxjNWgvYCmCaajUXnXusqk=;
        b=jP3dtH2EJ+W6ZWhEABNFyyHMxqnKI4H5DBHnwIM4irUbi5QBMFhZvSao7G09ti+95+
         w5XjbztNBFvP05gn7o/E5FCCugFLctYho6NU4G8IEqyIz4dF30DltEJ4nHYAHN14f2pa
         Ic16oBKZT/0dNXTUeq+GKfYk9o36W8CdR56g6FFkEYldF++waNcgVbjtz36af8HnVPSy
         hjnHhcWgf4ENTuqcVvsWRUgm7o8rrHIyuWGjEjwf0a6TG4rHGVpa5dJ7QJO9RwtoxOLz
         MIBHWVEDwphR5200y2KpTmNDTgodi2wjGxqLCUv1yL4eE0NmcNN9QCKYCKVwKaL2qUEp
         Al2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686234084; x=1688826084;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VQPvIn/e8Mc1M0TTKreMGDxjNWgvYCmCaajUXnXusqk=;
        b=GvsDk3XZreMKkkEbfeCa1AuBn4CD/6VQe8rIOGUUojGRju0VIs8VwpTr+Bsb9pfSBg
         b/P5hkmaGNItpg6V1Y4QqSeAJ+qGuiundjCD5+2tpDjdc9a1CcamiW8FLWX35w/3t0fs
         R6Xnk77+T3vONOE6c+JUrqilnMwh5F9NfpGPY/hP5WdwatBsoItSxz+gfjsHu6ex9gmN
         h8K36vBgxq0+4bOduyZtlGsC96szc3+71Z5uPqc7k3Vno1korFW9NkSVSkKnWyyAibih
         wJBYVselKIvycTp9QWyXPClXuWN8Ahya0pJBajfmHW+GQREkfnTjPBEjnd20rqK2BEyq
         GjZA==
X-Gm-Message-State: AC+VfDxMSTJu+3KDwMRb6XTXSb8rxs2Y5B0VdDQTq27kczRpRItzmu/9
	k5jj8+ROKBZWNwvSS8P6Qjvo0NDZI4djww==
X-Google-Smtp-Source: ACHHUZ5whQSKdRurXTZKrLGhXJl+mi6zMDj0tpUyAVct/6YnBcltngdaOZ9CXV22tBHtrztDMRZo/A==
X-Received: by 2002:ac8:5802:0:b0:3f8:6bc1:3c21 with SMTP id g2-20020ac85802000000b003f86bc13c21mr8178191qtg.11.1686234083911;
        Thu, 08 Jun 2023 07:21:23 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id fe9-20020a05622a4d4900b003f9adf7c9fbsm368658qtb.71.2023.06.08.07.21.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 07:21:23 -0700 (PDT)
Message-ID: <97b89e79-535a-0aa0-64a6-c97f3697d9a8@gmail.com>
Date: Thu, 8 Jun 2023 10:21:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI@lists.ettus.com>
 <JN1P275MB05351C0F0D0457FA8286E3D19550A@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <JN1P275MB05351C0F0D0457FA8286E3D19550A@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Message-ID-Hash: T4NUQ3NTRWX46VYB7GT6YEYSXTNUCGFL
X-Message-ID-Hash: T4NUQ3NTRWX46VYB7GT6YEYSXTNUCGFL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Creating TX usrp and RX usrp objects using Two different threads using X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T4NUQ3NTRWX46VYB7GT6YEYSXTNUCGFL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5198131074901592653=="

This is a multi-part message in MIME format.
--===============5198131074901592653==
Content-Type: multipart/alternative;
 boundary="------------9eKOTE80MQQ0T7YxYsRV0aAX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9eKOTE80MQQ0T7YxYsRV0aAX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/06/2023 07:16, Leon Wabeke wrote:
>
> Hi Eesa
>
> I am not sure if this will help, but in some of our code where we=20
> reuse the USRP in another thread, I only create the handle once and=20
> pass that to both threads (instead of calling multi_usrp::make in each=20
> thread), something like:
>
> |uhd::usrp::multi_usrp::sptr pUSRP =3D=20
> uhd::usrp::multi_usrp::|make|(strUSRPArgs);|
>
> |cTXClass =C2=A0tx(pUSRP);|
>
> |cRXClass =C2=A0rx(pUSRP);|
>
> Regards
>
> Leon
>
> *From: *eesa.nikahd@gmail.com <eesa.nikahd@gmail.com>
> *Date: *Thursday, 08 June 2023 at 07:56
> *To: *usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject: *[USRP-users] Creating TX usrp and RX usrp objects using Two=20
> different threads using X310
>
>
> =09
>
> You don't often get email from eesa.nikahd@gmail.com. Learn why this=20
> is important <https://aka.ms/LearnAboutSenderIdentification>
>
> =09
>
> [The e-mail server of the sender could not be verified (SPF Record)]
>
> Hi dears,
>
> I created a TX usrp an RX usrp object (using=20
> uhd::usrp::multiusrp::make()) using two different threads.
>
> When I try to set subdevice for them the first thread can set=20
> subdevice successfully but hte later fails to set it and throw an=20
> excption with this error message: "Error: map::at".
>
> (Example setting=3D> TX subdev=3DA:0, antenna=3DTX/RX; RX subdev=3DA:0 =
(or=20
> B:0), antenna=3D RX2)
>
> If I comment the methods to set subdevice for the later thread (e.g.=20
> for RX: rx_usrp->set_rx_subdev_spec("B:0")) my code works correctly.
>
> I wonder why this problem is for! As UHD examples such as=20
> txrx_loopback_tofile, set subdevice for both TX and RX separately and=20
> it works fine. The only difference between this example and mine is=20
> that I am using two different threads.
>
> It is worth noting that my code works correctly for N200 usrp.
>
> My UHD version is "UHD 4.3.0.0.-0g1f8fd345"
>
> Can anyone help me to resolve this issue?
>
> Thank you.
>
> Eesa
>
>
Indeed, there should only be on=C2=A0 multi_usrp object, and you create=20
*streamers* off of that object to handle TX and RX.

That it "works" on the N200 is probably just a historical accident.=20
There can be only one multi_usrp object to "own"
 =C2=A0 a given USRP device.=C2=A0 So, you create the multi_usrp once and=
 share it=20
across threads.=C2=A0=C2=A0 You may well create and RX
 =C2=A0 streamer in one thread and a TX in another.


--------------9eKOTE80MQQ0T7YxYsRV0aAX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/06/2023 07:16, Leon Wabeke wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:JN1P275MB05351C0F0D0457FA8286E3D19550A@JN1P275MB0535.ZAFP275.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}code
	{mso-style-priority:99;
	font-family:"Courier New";}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.hljs-builtin
	{mso-style-name:hljs-built_in;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">Hi Eesa=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">I am no=
t
            sure if this will help, but in some of our code where we
            reuse the USRP in another thread, I only create the handle
            once and pass that to both threads (instead of calling
            multi_usrp::make in each thread), something like:<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"></span>=
<code><span
              style=3D"color:black">uhd::usrp::multi_usrp::sptr pUSRP =3D
              uhd::usrp::multi_usrp::</span></code><span
            class=3D"hljs-builtin"><span style=3D"font-family:&quot;Couri=
er
              New&quot;;color:black">make</span></span><code><span
              style=3D"color:black">(strUSRPArgs);<o:p></o:p></span></cod=
e></p>
        <p class=3D"MsoNormal"><code><span style=3D"color:black">cTXClass
              =C2=A0tx(pUSRP);<o:p></o:p></span></code></p>
        <p class=3D"MsoNormal"><code><span style=3D"color:black">cRXClass
              =C2=A0rx(pUSRP);</span></code><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">Regards=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">Leon<o:=
p></o:p></span></p>
        <div style=3D"border:none;border-top:solid #B5C4DF
          1.0pt;padding:3.0pt 0cm 0cm 0cm">
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span
                style=3D"font-size:12.0pt;color:black">From:
              </span></b><span style=3D"font-size:12.0pt;color:black"><a =
class=3D"moz-txt-link-abbreviated" href=3D"mailto:eesa.nikahd@gmail.com">=
eesa.nikahd@gmail.com</a>
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:eesa.nika=
hd@gmail.com">&lt;eesa.nikahd@gmail.com&gt;</a><br>
              <b>Date: </b>Thursday, 08 June 2023 at 07:56<br>
              <b>To: </b><a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject: </b>[USRP-users] Creating TX usrp and RX usrp
              objects using Two different threads using X310<o:p></o:p></=
span></p>
        </div>
        <table class=3D"MsoNormalTable"
style=3D"width:100.0%;cellpadding:0;cellspacing:0;display:table;border-co=
llapse:seperate;float:none"
          width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0"
          align=3D"left">
          <tbody>
            <tr>
              <td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt
                1.5pt;valign:middle"><br>
              </td>
              <td style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt
                3.75pt 5.25pt 11.25pt" width=3D"100%">
                <div>
                  <p class=3D"MsoNormal"
style=3D"mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-wr=
ap:around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizo=
ntal:column;mso-height-rule:exactly"><span
                      style=3D"font-size:9.0pt;font-family:&quot;Segoe
                      UI&quot;,sans-serif;color:#212121">You don't often
                      get email from <a class=3D"moz-txt-link-abbreviated=
" href=3D"mailto:eesa.nikahd@gmail.com">eesa.nikahd@gmail.com</a>.
                      <a
                        href=3D"https://aka.ms/LearnAboutSenderIdentifica=
tion"
                        moz-do-not-send=3D"true">Learn why this is
                        important</a><o:p></o:p></span></p>
                </div>
              </td>
              <td style=3D"width:56.25pt;background:#EAEAEA;padding:5.25p=
t
                3.75pt 5.25pt 3.75pt;align:left" width=3D"75">
                <br>
              </td>
            </tr>
          </tbody>
        </table>
        <div>
          <pre>[The e-mail server of the sender could not be verified (SP=
F Record)] <o:p></o:p></pre>
          <p>Hi dears,<o:p></o:p></p>
          <p>I created a TX usrp an RX usrp object (using
            uhd::usrp::multiusrp::make()) using two different threads.<o:=
p></o:p></p>
          <p style=3D"margin-bottom:12.0pt">When I try to set subdevice
            for them the first thread can set subdevice successfully but
            hte later fails to set it and throw an excption with this
            error message: "Error: map::at".
            <o:p></o:p></p>
          <p style=3D"margin-bottom:12.0pt">(Example setting=3D&gt; TX
            subdev=3DA:0, antenna=3DTX/RX; RX subdev=3DA:0 (or B:0), ante=
nna=3D
            RX2)<o:p></o:p></p>
          <p>If I comment the methods to set subdevice for the later
            thread (e.g. for RX: rx_usrp-&gt;set_rx_subdev_spec("B:0"))
            my code works correctly.<o:p></o:p></p>
          <p>I wonder why this problem is for! As UHD examples such as
            txrx_loopback_tofile, set subdevice for both TX and RX
            separately and it works fine. The only difference between
            this example and mine is that I am using two different
            threads.<o:p></o:p></p>
          <p>It is worth noting that my code works correctly for N200
            usrp.<o:p></o:p></p>
          <p>My UHD version is "UHD 4.3.0.0.-0g1f8fd345"<o:p></o:p></p>
          <p>Can anyone help me to resolve this issue?<o:p></o:p></p>
          <p>Thank you.<o:p></o:p></p>
          <p>Eesa<o:p></o:p></p>
        </div>
      </div>
      <br>
    </blockquote>
    Indeed, there should only be on=C2=A0 multi_usrp object, and you crea=
te
    *streamers* off of that object to handle TX and RX.<br>
    <br>
    That it "works" on the N200 is probably just a historical accident.=C2=
=A0
    There can be only one multi_usrp object to "own"<br>
    =C2=A0 a given USRP device.=C2=A0 So, you create the multi_usrp once =
and share
    it across threads.=C2=A0=C2=A0 You may well create and RX<br>
    =C2=A0 streamer in one thread and a TX in another.<br>
    <br>
    <br>
  </body>
</html>

--------------9eKOTE80MQQ0T7YxYsRV0aAX--

--===============5198131074901592653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5198131074901592653==--
