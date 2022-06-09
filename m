Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDE254565C
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 23:15:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB8F1384978
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 17:15:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654809328; bh=uCPkuK2HFGDMHjBO/C0CFphSvw1/pdxBgE2tNiWfnkE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0OK2Bfs/uxBlrqT1yMVXJpRtOysiLNw4ehQQ6T7Souk5eNWsjaBUQlQuisoFpVnbD
	 M5px5hUut3lcxZHiyGrE1V0gXntXX/vL4fzLf8VcqAtJ8pyBMu8ofFEaamJYQSuUAe
	 EDWYcE4S6x7TIWo71DiB653OjZKf2qxB5VFUmbPp0qaPrbE2HuzdPZ6HSvMtNgdOjX
	 /MlLPsch9ZvRwnpw1q3n96oj2+d3VoojQkklKFqAb1gg7FnllRMjPn2RF7ssLzyP7S
	 ylDyKnSH/9psgUaxUT+Ya4yz606t3/Wkq223+ZvVg2vl5ziwcq6KrszG8btc3g8UHw
	 YrysJtJpk3Mdg==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id B2453384932
	for <usrp-users@lists.ettus.com>; Thu,  9 Jun 2022 17:14:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RtA8Rsxi";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id o68so18639096qkf.13
        for <usrp-users@lists.ettus.com>; Thu, 09 Jun 2022 14:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=OtyrtGzYInAgIBLj0MxWrjO07gk2DGNTjMnjgdoIYF8=;
        b=RtA8Rsxi/3qhXejFqdynI1LC3yWtA0+P5RqHXzDoDYuis8KpUBrnL9BRAFb0Zn9NHK
         u4a/vHzOcuQY7Vk7zvYI4cRF3xUYz1YNlNjWBnIaFlh7TKgm1cHD/x0JCV1mQm8YPA1r
         iKWx3wwQuzpAlscwmv7lu6o/inyXdG349AaruVnVzJwbigcyi804EAjo6wUYAwivkzKM
         QjvnbmiMTWUYHlkZZpB/jx5aKmCDDGKaNzA7ZPQyRFD72bEe4y7Z6lX1clmRg4N1qtqA
         U4Ky1bhQ7FGlLJuye6OFC8gQEF379SdT8Uap1FpUzzcQM9FaSeGEoQxH4x8gR28a5Erv
         0MLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=OtyrtGzYInAgIBLj0MxWrjO07gk2DGNTjMnjgdoIYF8=;
        b=zziruj2O/9Rz7RL4/PBcxa43bDoDzoNNY0mL+uXrQQkxz4CHwtdE78CZZc7s2TYivs
         KPhX4ZuskcC9beoLna6u027MNhZFz28SbhpJztG4bQ64R1YoVgZCMC6H1q1dK8P0f8CW
         6FfmEdtbFAwfOmNBz1I3oCcCw2thB4Z3o7mcU5z/OWlTK+n3vfsXL3N4SaqVXdmKg44q
         0pJZA7CLEzQ6Tohy9b40+3rasfjXuBNSMT8m/DW2IJo34himY+lsSAmCavDB3FWn198L
         XS3rwxWjIjq+BlsEA1fPNuJGqYf1MDQSiK/j7ciME4PrMijWhtUPTicu2BlJh9BgYWXK
         u1zQ==
X-Gm-Message-State: AOAM533hBbL08hoQpev0dGHS2bdEy6eu9uU+pZioEhScAy8V5tEBvrGf
	8IPVNKlcsCq21sqhlCnTMKwFAhhIa9PTXhS7
X-Google-Smtp-Source: ABdhPJzHtmDCqo6sw/0qbMwkIoM9y/JOUtVV+Kc/Jb23eCgmtV2y4209OaLFUK8ucf2FJrdM2YAAuw==
X-Received: by 2002:a37:b487:0:b0:6a3:2a76:2836 with SMTP id d129-20020a37b487000000b006a32a762836mr27992754qkf.352.1654809253642;
        Thu, 09 Jun 2022 14:14:13 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id cd9-20020a05622a418900b00304fe96c7aasm5430921qtb.24.2022.06.09.14.14.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 14:14:13 -0700 (PDT)
Message-ID: <e42d8756-53df-9fcd-452c-0b81334e9343@gmail.com>
Date: Thu, 9 Jun 2022 17:14:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN0P110MB1015237F05BE51B9B8EA3F8FB1A79@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN0P110MB1015237F05BE51B9B8EA3F8FB1A79@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: OXKXBR47XKSWERZMQABCUEZNTWEAA6BP
X-Message-ID-Hash: OXKXBR47XKSWERZMQABCUEZNTWEAA6BP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPIO on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OXKXBR47XKSWERZMQABCUEZNTWEAA6BP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8007139106014140767=="

This is a multi-part message in MIME format.
--===============8007139106014140767==
Content-Type: multipart/alternative;
 boundary="------------0gaH1LqSNBM2t3ts06S3xQuL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0gaH1LqSNBM2t3ts06S3xQuL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-06-09 11:05, White, Joshua J wrote:
> Hello,
>
> Apologies if this question is too basic, but I have not been able to 
> find a definitive answer in the N310 documentation. Is it possible to 
> stream data or signals to or from the USRP using the GPIO ports, or is 
> it only useful for status and triggering? Specifically, is it possible 
> to use the GPIO to stream an arbitrary waveform to the N310, digitize 
> it, and then modulate and transmit it? Conversely, is it possible to 
> receive a signal, demodulate and stream it to the GPIO?
>
> Very respectfully,
>
> **
>
> *Joshua White *
>
> Precision Timing Systems Engineer
>
> Engineering & Support Solutions Directorate
>
> www.riversideresearch.org <http://www.riversideresearch.org/>
>
> T: 937.986.3153 | F: 937.431.3811
>
> This e-mail message, including any attachments, is for the sole use of 
> the intended recipient(s) and may contain proprietary, confidential or 
> privileged information or otherwise be protected by law. Any 
> unauthorized review, use, disclosure or distribution is prohibited. If 
> you are not the intended recipient, please notify the sender and 
> destroy all copies and the original message.
>
>
>
>
The GPIOs are intended only for low-rate status/triggers/external 
hardware controls.


--------------0gaH1LqSNBM2t3ts06S3xQuL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-09 11:05, White, Joshua J
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN0P110MB1015237F05BE51B9B8EA3F8FB1A79@BN0P110MB1015.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Apologies if this question is too basic, but I have not been
        able to find a definitive answer in the N310 documentation. Is
        it possible to stream data or signals to or from the USRP using
        the GPIO ports, or is it only useful for status and triggering?
        Specifically, is it possible to use the GPIO to stream an
        arbitrary waveform to the N310, digitize it, and then modulate
        and transmit it? Conversely, is it possible to receive a signal,
        demodulate and stream it to the GPIO?</div>
      <div>
        <div id=3D"Signature">
          <div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              <p style=3D"margin:0in; font-size:11pt;
                font-family:Calibri,sans-serif">=C2=A0</p>
              <p style=3D"margin:0in; font-size:11pt"><span
                  style=3D"color:#1F497D">Very respectfully,=C2=A0</span>=
</p>
              <p style=3D"margin:0in; font-size:11pt"><b><span
                    style=3D"color:#1F497D">=C2=A0</span></b></p>
              <p style=3D"margin:0in; font-size:11pt"><b><span
                    style=3D"color:#1F497D">Joshua White=C2=A0</span></b>=
</p>
              <p style=3D"margin:0in; font-size:11pt"><span
                  style=3D"color:#1F497D">Precision Timing Systems
                  Engineer=C2=A0</span></p>
              <p style=3D"margin:0in; font-size:11pt"><span
                  style=3D"color:#1F497D">Engineering &amp; Support
                  Solutions Directorate=C2=A0</span></p>
              <p style=3D"margin:0in; font-size:11pt"><span
                  style=3D"color:#1F497D"><a
                    href=3D"http://www.riversideresearch.org/"
                    rel=3D"noreferrer" data-ss1649772410=3D"1"
                    data-ss1654786279=3D"1" moz-do-not-send=3D"true"><spa=
n
                      style=3D"color:blue">www.riversideresearch.org</spa=
n></a>=C2=A0</span></p>
              <p style=3D"margin:0in; font-size:11pt"><span
                  style=3D"color:#1F497D">T: 937.986.3153 | F:
                  937.431.3811=C2=A0</span></p>
              <p style=3D"margin:0in; font-size:11pt"><span
                  style=3D"color:black">=C2=A0</span></p>
              <p style=3D"margin:0in; font-size:11pt"><span
                  style=3D"font-size:9.0pt; color:#1F497D">This e-mail
                  message, including any attachments, is for the sole
                  use of the intended recipient(s) and may contain
                  proprietary, confidential or privileged information or
                  otherwise be protected by law. Any unauthorized
                  review, use, disclosure or distribution is prohibited.
                  If you are not the intended recipient, please notify
                  the sender and destroy all copies and the original
                  message.</span><span style=3D"color:#1F497D">=C2=A0</sp=
an></p>
              <br>
              <br>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    The GPIOs are intended only for low-rate status/triggers/external
    hardware controls.<br>
    <br>
    <br>
  </body>
</html>

--------------0gaH1LqSNBM2t3ts06S3xQuL--

--===============8007139106014140767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8007139106014140767==--
