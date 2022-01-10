Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE84B489EAC
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 18:55:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97FCB384BB9
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 12:55:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nfUSVJRZ";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D57A384B09
	for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 12:53:57 -0500 (EST)
Received: by mail-qt1-f180.google.com with SMTP id c15so14775022qtc.4
        for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 09:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=8iUmTxIljlC9Kj9APLC9X6xZxroW4gJzvkfN9FCsi4c=;
        b=nfUSVJRZ+i9sYhk21ryhUW00p7SNTSHvez8ufnpEuCV0EGi0OzqhBKec/XphnmRq1I
         8xHyCLRrDD0fqYtoCd4YcjeMDAvQdsUSFLT4g7LDXooOALRqNhwbwWzn0kQEj5tOJI/2
         AHDu2YYZ5X8X0fZMLOEhLmVAklCZq4Q4bhclPxO7GQFcalQD8B8S8SZozBzzI8rBtACk
         HBykr/QH/5s0MOzc8eg26f/C/sJNpsBNq7Zwmp91HJAZgC2sUBOiQ6g5FCfa+B4M7yTL
         O5M0SQ5KiD7nDoDPDF2gfhXcn7q/833NG5COT5ABOBnS4PURHxWNbKyI9L3k5dwZR/LF
         vLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=8iUmTxIljlC9Kj9APLC9X6xZxroW4gJzvkfN9FCsi4c=;
        b=x8ma3HB2312YS+y8gIrg+omxNH+pqYyFAojxIxU6vhQHHLiVqLTf0to/OzcR//I6fp
         7zT7hLsjb2YbU8/h/m5HezwUq2s2sQRbEpyCF8FpRu4CG/YEePpnhgWwawjNvu7Dv3hO
         hDRMbtEmkxAArOB7v4mcAGAVK+GZd6Payd4Wn6E2qi6Lvq3XMYNXcGjGTRtLliVHhtBJ
         cW5B/V1/0vXODAh/xn6u2EmFPxCm2ZAaAk9DBjan+ZXRmOUkrQ0TJ0vhPwK6fGEcB+6S
         Bo3YFFTByRqoJ79hHu99+eWpwZ/h0sux+6D8R2GvT1lXOQFUs8bXMRay5gl+KlOB7wTe
         ftFQ==
X-Gm-Message-State: AOAM5333drUqjaQkhIqlNBYZt6K0x54/N8G7vul9LrT33txfIvDv0U79
	u1tpY4TJN6sbS4hu0/zh4rH4OgkycVhdzw==
X-Google-Smtp-Source: ABdhPJxyuiNqwA6cGUBPxMrq91SS2mP2WYX8Et8+tBDsQ5DUJT4ON+fbMIG8GyL044yJwAprn/ghrg==
X-Received: by 2002:a05:622a:411:: with SMTP id n17mr687770qtx.439.1641837236509;
        Mon, 10 Jan 2022 09:53:56 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id de39sm4698649qkb.5.2022.01.10.09.53.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jan 2022 09:53:56 -0800 (PST)
Message-ID: <10e26638-e44e-8da9-3c54-6b1edf5d7e5e@gmail.com>
Date: Mon, 10 Jan 2022 12:53:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PYmsfo39Nhlpd4oSxxL2Vc64Vflmd65WRikyNn9I8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PYmsfo39Nhlpd4oSxxL2Vc64Vflmd65WRikyNn9I8@lists.ettus.com>
Message-ID-Hash: PYDLF63ZRAUZVNRMS26DKCY7NO6HGO2X
X-Message-ID-Hash: PYDLF63ZRAUZVNRMS26DKCY7NO6HGO2X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 device IOError: Could not find path for image: usrp_b200_fw.hex
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYDLF63ZRAUZVNRMS26DKCY7NO6HGO2X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1463021442388544360=="

This is a multi-part message in MIME format.
--===============1463021442388544360==
Content-Type: multipart/alternative;
 boundary="------------Vg0QOpOGH8nh76DrLHbrwwOd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Vg0QOpOGH8nh76DrLHbrwwOd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-10 05:18, mobizmn--- via USRP-users wrote:
>
> I installed GNU Radio via Pybombs. The Ubuntu version is=C2=A0Ubuntu=20
> 18.04.6 LTS.
>
> So, I added the line in bashrc and now the file is running fine=20
> without any errors. Thanks!
>
> But let me modify the problem statement. Apart from running the file=20
> from command line, I am also trying to run a similar code in Eclipse=20
> (which is my main working IDE). When I ran the that code in Eclipse=20
> for USRP N210, it was working perfectly fine. But when I run this code=20
> with USRP B210, it is still giving me the same error as mentioned=20
> above. (I now do have the path to UHD_IMAGES_DIR in bashrc).
>
> Any idea how to solve this problem for Eclipse?
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
It's very likely that the way your system starts Eclipse (from a menu=20
item in the GUI?) it doesn't run Bash first, or if it does, it doesn't=20
do it in a way that causes Bash to
 =C2=A0 read its .bashrc.

Environment variables in Linux (and other Unix-like OS) propagate=20
*downwards* in the process tree, and not "across".

You'll have to look into how Eclipse gets started on your system, and=20
modify that, or start it from a command window that includes that=20
environment variable.


--------------Vg0QOpOGH8nh76DrLHbrwwOd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-10 05:18, mobizmn--- via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:PYmsfo39Nhlpd4oSxxL2Vc64Vflmd65WRikyNn9I8@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I installed GNU Radio via Pybombs. The Ubuntu version is=C2=A0Ub=
untu
        18.04.6 LTS.</p>
      <p>So, I added the line in bashrc and now the file is running fine
        without any errors. Thanks!</p>
      <p>But let me modify the problem statement. Apart from running the
        file from command line, I am also trying to run a similar code
        in Eclipse (which is my main working IDE). When I ran the that
        code in Eclipse for USRP N210, it was working perfectly fine.
        But when I run this code with USRP B210, it is still giving me
        the same error as mentioned above. (I now do have the path to
        UHD_IMAGES_DIR in bashrc).</p>
      <p>Any idea how to solve this problem for Eclipse?</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    It's very likely that the way your system starts Eclipse (from a
    menu item in the GUI?) it doesn't run Bash first, or if it does, it
    doesn't do it in a way that causes Bash to<br>
    =C2=A0 read its .bashrc.<br>
    <br>
    Environment variables in Linux (and other Unix-like OS) propagate
    *downwards* in the process tree, and not "across".<br>
    <br>
    You'll have to look into how Eclipse gets started on your system,
    and modify that, or start it from a command window that includes
    that environment variable.<br>
    <br>
    <br>
  </body>
</html>
--------------Vg0QOpOGH8nh76DrLHbrwwOd--

--===============1463021442388544360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1463021442388544360==--
