Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A5D4D1A91
	for <lists+usrp-users@lfdr.de>; Tue,  8 Mar 2022 15:29:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D712C384E80
	for <lists+usrp-users@lfdr.de>; Tue,  8 Mar 2022 09:29:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KCFi4NMS";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 75A5F38465E
	for <usrp-users@lists.ettus.com>; Tue,  8 Mar 2022 09:27:55 -0500 (EST)
Received: by mail-qt1-f177.google.com with SMTP id t28so16218068qtc.7
        for <usrp-users@lists.ettus.com>; Tue, 08 Mar 2022 06:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=FjnIswtgpyc56+fYdhX1Sj6j/SfQdwg9IESD6Sh6xeE=;
        b=KCFi4NMSrWXAaUtxRvCHfJ/06YH/E+Cih/XyeyITEsliI2Zym+PIDT8yyhu5AC833g
         Bvu1DvhAyfoYG0RNcMP4FOBhmALbXeHyex/2QNH65EHTaVGM+vfTbLpl1ABbFfnCl5Ry
         g+Di8B3AHLwj7JHOL5CeuF2cgEZUZbJmed3KUerzFMmRK/d+yXN/psebGOWCdaKW9zrm
         wDa8Gz/8GG5OsNWzcribkl+B36AhlBX1gtMQyLzEJNc7EIPjwzStu+H7rBrzOiwZs4/S
         qXK8L24WhFbG7R70zUrHeXwuZpi1gMx98Qn6AoES7MJPVwCG14+kwpCab5LKqM2z5MAK
         zHZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=FjnIswtgpyc56+fYdhX1Sj6j/SfQdwg9IESD6Sh6xeE=;
        b=IdP4hqxO3JFJmuvM+8TZoYppFp3X8gnGscrY+aQqX7dUqw3w9XAs911N++2If4xwqd
         pO+VG5zK3q0ISA40+kv2dkZjOZo+e4pcDmNOs++iaPiO0SqtLJCbn1jKZAzfsaNxaob9
         Me4oVKWECFN/YvJTB8HGL4c5g/QUjpkNH1KU1soEBL1MBcW5qekh0Vmul09qrsHk0PgJ
         jNKMjlwfUyMV+fhZAKCOMlWiFo8+AecyDzD1UPTEA3/wXDduF1kL1uJq8KPxsjZE+U4G
         MDc5V+0Owf3O4AisWn6m1VpAMwDpfz3Do3KQpsEntRBYkUcBTLVeNrqWAb88GhFMfWZR
         /4Qw==
X-Gm-Message-State: AOAM532pXLZBIPQLt67tj2n3GG1xXOkUX5gwIwZt3Cjt6fF7nWRaE9Hy
	1Ep0uXpHbk6He9bhb8AlZVct6rbNtxo5+w==
X-Google-Smtp-Source: ABdhPJx29ryKNJezIvXlEs4I/H+wZ6I59zlKK0OUb1tGyGpd5vpGlQuqi/+bQ9Ge0PF3WaHdugGiTA==
X-Received: by 2002:ac8:4e46:0:b0:2cf:942e:518c with SMTP id e6-20020ac84e46000000b002cf942e518cmr13480054qtw.68.1646749674493;
        Tue, 08 Mar 2022 06:27:54 -0800 (PST)
Received: from [192.168.2.147] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t28-20020a05620a005c00b00662fb1899d2sm7670455qkt.0.2022.03.08.06.27.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Mar 2022 06:27:53 -0800 (PST)
Message-ID: <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
Date: Tue, 8 Mar 2022 09:27:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: ERRYIYSPVLYQQYMPIS23UYXIWSU5H5NR
X-Message-ID-Hash: ERRYIYSPVLYQQYMPIS23UYXIWSU5H5NR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ERRYIYSPVLYQQYMPIS23UYXIWSU5H5NR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7573077835960808998=="

This is a multi-part message in MIME format.
--===============7573077835960808998==
Content-Type: multipart/alternative;
 boundary="------------QQgKlrB4aURaXfJ4ECFDXDgW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QQgKlrB4aURaXfJ4ECFDXDgW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-08 07:51, Tobias Kronauer wrote:
> Dear all,
>
> I want to synchronize multiple USRP devices using a GPS antenna. I use=20
> a X410. Running the example file `./sync_to_gps`, I get the warning=20
> that the GPS is not locked (ref is locked however). Further, if I=20
> probe the GPS module pins, I receive the following:
>
> GPS locked? 0
> gps enabled? 1
> gps alarm? 1
> gps warmed up? 0
> gps survey? 0
>
> I am wondering, why the GPS alarm PIN is true... I cannot find any=20
> information on this in the documentation. Interestingly, I get the=20
> same results if a GPS antenna is NOT connected to the USRP... Plus,=20
> the example file prints me a GPSDO timestamp. am I missing something=20
> entirely fundamental?
>
> Thanks in advance,
> Tobias
>
>
>
>
Is the GPS light on the USRP illuminated?

How are you distributing your GPS antenna signal to your multiple X410s?

Looking at the documentation from Jackson Labs for the GPSDO, the=20
"ALARM" signal indicates a hardware fault, which may be nothing more
 =C2=A0 than "I'm not seeing a GPS signal".


**
--------------QQgKlrB4aURaXfJ4ECFDXDgW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-08 07:51, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      Dear all,
      <div><br>
      </div>
      <div>I want to synchronize multiple USRP devices using a GPS
        antenna. I use a X410. Running the example file `./sync_to_gps`,
        I get the warning that the GPS is not locked (ref is locked
        however). Further, if I probe the GPS module pins, I receive the
        following:</div>
      <div><br>
      </div>
      <div>GPS locked? 0</div>
      <div>gps enabled? 1</div>
      <div>gps alarm? 1</div>
      <div>gps warmed up? 0</div>
      <div>gps survey? 0</div>
      <div><br>
      </div>
      <div>I am wondering, why the GPS alarm PIN is true... I cannot
        find any information on this in the documentation.
        Interestingly, I get the same results if a GPS antenna is NOT
        connected to the USRP... Plus, the example file prints me a
        GPSDO timestamp. am I missing something entirely fundamental?</di=
v>
      <div><br>
      </div>
      <div>Thanks in advance,</div>
      Tobias
      <div>
        <p style=3D"font-size: 11pt; font-family: Calibri, sans-serif,
          serif, &quot;EmojiFont&quot;; margin: 0px;">
          <br>
          <br>
          <br>
        </p>
      </div>
    </blockquote>
    Is the GPS light on the USRP illuminated?<br>
    <br>
    How are you distributing your GPS antenna signal to your multiple
    X410s?<br>
    <br>
    Looking at the documentation from Jackson Labs for the GPSDO, the
    "ALARM" signal indicates a hardware fault, which may be nothing more<=
br>
    =C2=A0 than "I'm not seeing a GPS signal".<br>
    <br>
    <br>
    <b></b>
  </body>
</html>

--------------QQgKlrB4aURaXfJ4ECFDXDgW--

--===============7573077835960808998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7573077835960808998==--
