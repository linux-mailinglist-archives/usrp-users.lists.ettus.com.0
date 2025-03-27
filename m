Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D09A73EF2
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 20:46:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89F7138554F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 15:46:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743104806; bh=TZqeiji54b5JqbEpPcxc9hoYOcnz07KibWmBDBe2SA4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wLAvwicI3qU8OJ4Y9I1JG2XhgGfmjebbdoxTlJ8NOvlG+lJLJbO2EZFk01K/T9bHV
	 NwKsWQzim8pQ5UYcBnO89X0AIJCxVHFGdTk7dDmIC/eeoXoqS029Yc6mCXviX5JIvt
	 vUZn7O5B/pfCm+2maALS+WpYpwCPHrFycZbIIVj5yrjkvnPYWKpCV/W76ptyuT3Yrc
	 H4IP9wBkCiXdJxwFuyfmWZ78zYjw3j8HjNaffMZvkwynV2CgOUZs5IrRw+sNeI79t2
	 guH17U8fCOjqEA1peIyHgzGDPtBzWqwPz1gZ0+k0pMZBYpC5+SypYJsykGZyXa81um
	 K7iJW/QarPGpA==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6822738007C
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 15:46:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ho7jtLDO";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6ecfc7fb2aaso11623906d6.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 12:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743104785; x=1743709585; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYr7Rsit+la1hFb6IyPK0qLo+moyfcRJUQlYf2YUwz0=;
        b=ho7jtLDO15+r0TExb7ZxK61OhpHLyt/0xbTEtHLElJHMxVZeTlIIV2UEkMAi2OT1Ov
         tu6rDVhOOGuLI9oSHH6reeKxBKK2IqBvuH208YSVNHexBiDala0tW9jyndDtylbJQ9yt
         i7JTLgWhgVS4nEyctd2e6O1JTWNWiAeaxfsjLk5FJZPNjTWZdLK2eDiqH8FFKAlpw5PS
         uAjZ/NYI3cGpmACbJJXL5dSDvp4O3xTmMBmxSLCO4FhjSbQP5tXhcOcClyup3LCTz0cd
         cqb36GXQa9at2AOBhqvJF34Uw/GjwfswvE1uUQ7NeMfX7n4BalO9GYrxb9RcKWKmX+RF
         ayWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743104785; x=1743709585;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JYr7Rsit+la1hFb6IyPK0qLo+moyfcRJUQlYf2YUwz0=;
        b=JIRuR0+Zw/rcx8JVkjM6HTM+o/EA5SK3fX6zjT1tYspLVaRx8O7steOPCtJ49dIgcF
         gcf8TrALHzFgFbkh3B2ZXEyw4rymTAjtgqLUNu6+a62bXKNh8hsr0Dzl7+Flo9EmPxTB
         LwvEmz0QP84rKrFYPQOdOcZ1tll5YB1KmGHVqqH8PJYMnkG4ibze6ozCXuKyvNG+p5HO
         7y2BkdYur1bIYIA81VRrwMpPy1S7Ec/U/Rala5qm/QOv0nlV1cWgQC+z+CvlENyoeHJP
         j+NSE8LTkVE5LpEkDmqb6zgWvr3YbbE4OXr1RjlexpMUelzqt5psJO4qC+m3SVkAkot0
         L1vg==
X-Gm-Message-State: AOJu0YyEFXwbyBK+T8HnQCajfbdbtJtHBkqOv1KB9Y7gE6G6v3hb6k8L
	3mhqMBuf9RHWYK6kgPrb4jiypg4Z/ssai30dwLO337CFnwURfeHTJAKYpA==
X-Gm-Gg: ASbGncupbLBDAWXSWsDl84I22yUfUy+q7Fmmhhnp/vjlpUBFqHqyCZ4M7Cy3iU5M+Ku
	rzvkt1A6UqYzPEPmkboFEdsrmR/ol8kyuyG6fW6QzE6PPzlTiMcRbi2b/lpKvNrBwxfZE7G72py
	NYMG2CJHH4GR0JqIIAB5V1yvraf1Wns+k7mP/M8jvTKDG9dVZE3LdodeXYd5lWcRe5ieeV8jgSR
	PXJjByKrtbabrSykIlrQj9BWqHWLRl7mfdyKMSqlGIKQo/QiDu/IR1Y0fLCKXE4DDoWuU1j97+K
	NRO1nU3MAaS6hsKx5YGAJ6l8aPWIPKlBMBE8S3gU/B1fwTjw9n5GjmQ=
X-Google-Smtp-Source: AGHT+IG8RMZkAITTZOtqC0DHdoXHkkpqt9ISIu+xNP7tEEwmaGqtbb38XPyfBYgBCsTxHU666Ud+4Q==
X-Received: by 2002:ad4:48c6:0:b0:6eb:28e4:8516 with SMTP id 6a1803df08f44-6ed23907925mr53993866d6.33.1743104785345;
        Thu, 27 Mar 2025 12:46:25 -0700 (PDT)
Received: from [192.168.2.170] ([76.67.104.188])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6eec9771eebsm2461796d6.72.2025.03.27.12.46.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 12:46:24 -0700 (PDT)
Message-ID: <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com>
Date: Thu, 27 Mar 2025 15:46:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
 <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
 <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: QF532HZTJGVA3DEFZ4HVQLZ5O2MDOGTQ
X-Message-ID-Hash: QF532HZTJGVA3DEFZ4HVQLZ5O2MDOGTQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QF532HZTJGVA3DEFZ4HVQLZ5O2MDOGTQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8641344374779804136=="

This is a multi-part message in MIME format.
--===============8641344374779804136==
Content-Type: multipart/alternative;
 boundary="------------De8a4LtVHyhMhojhJKdKVnJ9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------De8a4LtVHyhMhojhJKdKVnJ9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/03/2025 15:31, Mann, John - 0662 - MITLL wrote:
>
> Does anyone know if there is a way to get predictable phase offsets=20
> from an X410?=C2=A0 I am finding that from run-to-run, the 4 channels i=
n an=20
> X410 have completely random phase offsets from each other.=C2=A0 I didn=
=E2=80=99t=20
> necessarily expect the phase offsets to be zero, but was hoping they=20
> would at least be consistent.
>
> John
>
At the very least, use timed-commands to tune it.=C2=A0=C2=A0=C2=A0=C2=A0=
 The ZBX board that=20
does the analog up/down conversion uses LMX2572
 =C2=A0 synthesizers, and I don't know how easy it is to phase-align thos=
e=20
synthesizers in practice.


> *From:* Chris Rogers <c1337rogers@gmail.com>
> *Sent:* Thursday, March 27, 2025 1:51 PM
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXT] [USRP-users] Re: X440 Phase Coherent but not Phase=20
> Aligned
>
> Hi Heath and Marcus, I was actually "R&D's plate" for this one. We=20
> worked through it and found the issue. The root cause is the startup=20
> sequence in almost every example UHD script is a bit out of order and=20
> had to be reorganized
>
> ZjQcmQRYFpfptBannerStart
>
> *This Message Is From an External Sender *
>
> This message came from outside the Laboratory.
>
> ZjQcmQRYFpfptBannerEnd
>
> Hi Heath and Marcus,
>
> I was actually "R&D's plate" for this one. We worked through it and=20
> found the issue. The root cause is the startup sequence in almost=20
> every example UHD script is a bit out of order and had to be=20
> reorganized in terms of clock setup and synchronized channel tuning.=20
> This problem is fixed in UHD 4.7+ if you look at the=20
> "tx_waveforms.cpp" example code... For your application, just make=20
> sure to follow the same startup sequence.
>
> Hope this helps,
>
> Chris
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------De8a4LtVHyhMhojhJKdKVnJ9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/03/2025 15:31, Mann, John - 0662
      - MITLL wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Does anyone know if there is a way to get
          predictable phase offsets from an X410?=C2=A0 I am finding that
          from run-to-run, the 4 channels in an X410 have completely
          random phase offsets from each other.=C2=A0 I didn=E2=80=99t ne=
cessarily
          expect the phase offsets to be zero, but was hoping they would
          at least be consistent.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">John</p>
      </div>
    </blockquote>
    At the very least, use timed-commands to tune it.=C2=A0=C2=A0=C2=A0=C2=
=A0 The ZBX board
    that does the analog up/down conversion uses LMX2572<br>
    =C2=A0 synthesizers, and I don't know how easy it is to phase-align t=
hose
    synthesizers in practice.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
          <p class=3D"MsoNormal"><b>From:</b> Chris Rogers
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:c1337rogers=
@gmail.com">&lt;c1337rogers@gmail.com&gt;</a> <br>
            <b>Sent:</b> Thursday, March 27, 2025 1:51 PM<br>
            <b>To:</b> Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E"=
 href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;<=
/a><br>
            <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            <b>Subject:</b> [EXT] [USRP-users] Re: X440 Phase Coherent
            but not Phase Aligned<o:p></o:p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
              style=3D"font-size:1.0pt;color:white">Hi Heath and Marcus, =
I
              was actually "R&amp;D's plate" for this one. We worked
              through it and found the issue. The root cause is the
              startup sequence in almost every example UHD script is a
              bit out of order and had to be reorganized<o:p></o:p></span=
></p>
        </div>
        <div>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
              style=3D"font-size:1.0pt;color:white">ZjQcmQRYFpfptBannerSt=
art<o:p></o:p></span></p>
        </div>
        <table class=3D"MsoNormalTable"
          style=3D"width:100.0%;border-radius:4px" width=3D"100%"
          cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
          <tbody>
            <tr>
              <td style=3D"padding:12.0pt 0in 12.0pt 0in">
                <table class=3D"MsoNormalTable"
style=3D"width:100.0%;background:#D0D8DC;border:none;border-top:solid #90=
A4AE 3.0pt"
                  width=3D"100%" cellspacing=3D"0" cellpadding=3D"0"
                  border=3D"1">
                  <tbody>
                    <tr>
                      <td
style=3D"border:none;padding:0in 7.5pt 3.75pt 4.5pt" valign=3D"top">
                        <table class=3D"MsoNormalTable" cellspacing=3D"0"
                          cellpadding=3D"0" border=3D"0" align=3D"left">
                          <tbody>
                            <tr>
                              <td
                                style=3D"padding:3.0pt 6.0pt 3.0pt 6.0pt"=
>
                                <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">This
                                      Message Is From an External Sender
                                      <o:p></o:p></span></b></p>
                              </td>
                            </tr>
                            <tr>
                              <td
                                style=3D"padding:3.0pt 6.0pt 3.0pt 6.0pt"=
>
                                <p class=3D"MsoNormal"><span
style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lack">This
                                    message came from outside the
                                    Laboratory. <o:p></o:p></span></p>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
        <div>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
              style=3D"font-size:1.0pt;color:white">ZjQcmQRYFpfptBannerEn=
d<o:p></o:p></span></p>
        </div>
        <div>
          <div>
            <p class=3D"MsoNormal">Hi Heath and Marcus,<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">I was actually "R&amp;D's plate" for
              this one. We worked through it and found the issue. The
              root cause is the startup sequence in almost every example
              UHD script is a bit out of order and had to be reorganized
              in terms of clock setup and synchronized channel tuning.
              This problem is fixed in UHD 4.7+ if you look at the
              "tx_waveforms.cpp" example code... For your application,
              just make sure to follow the same startup sequence.<o:p></o=
:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">Hope this helps,<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">Chris<o:p></o:p></p>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
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

--------------De8a4LtVHyhMhojhJKdKVnJ9--

--===============8641344374779804136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8641344374779804136==--
