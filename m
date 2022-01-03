Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B914748346E
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 16:54:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54D55384AF3
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 10:54:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e+1NEAyB";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D8D9384F43
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 10:53:49 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id kj16so31325476qvb.2
        for <usrp-users@lists.ettus.com>; Mon, 03 Jan 2022 07:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=oCbc2CQ+Um3ip+LKXng30XZXsoNMtdBeNYgdNDHn8O0=;
        b=e+1NEAyBpHGEvFe2CFQfM2NCVs37TEYuBKOIa1+H69Glt6v3P0VUp0wges9kTOO50O
         qiR5bfO1IQ0pMYjLOLMx4Cj4F7p9spT65BT4b4Wo8AxAtTRtjuTeKWZuhsx5siJQfnQx
         Ilv61GgGyf0FCaebj6FQtFrHziE6iYAMHbzLJpe1qUSrmjNf9sJrZdVhbqMkpqZr6odh
         JOU+daB1IosYcVqj9/SW2lnbMmODkXQ9Nta7lphLz58Qa/GRYmEQvUCqneIyWDAdokFq
         gm2PypLjn9hcGQ0VE4bk6AsXX68HU6fO2etpdV4kW/mQgeG/dxCqO7ZA2kRHPH+DLrfs
         S7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=oCbc2CQ+Um3ip+LKXng30XZXsoNMtdBeNYgdNDHn8O0=;
        b=KeA2n11RyH0JTn4kxFu/sn2JgcUawde4gxxK2lYdqF3sUCs3yjLWqgmhkryKlwdBje
         F/8Um+to8yCjQrHmZeeEoAEKmYS1sVAFqEm5mWi6HM15YlJ5oj8ouuC6xjhRjA6vZiH0
         ukYpxT0clR8F4uf04NGclKzZmNd2rleEhMsVU7fANEK84C4oQkYE9uhiTCGgfPGW/yvu
         6ePzUWMH0DSZQ2yg9HxfIKaCX9CXICvs4nyAh2xD7ZZ7gMeDPIlppzazCgaL+2NGIyJ8
         6zfEzZhzX3foswJLFgTmxw4uCznIlYclJdO1JnN91iBeQosULLC0daoqMxahXeQFQGqc
         h3VQ==
X-Gm-Message-State: AOAM5322IJ4+Qx3vrPYHBMBIvXyrrkReMZ/WH4jhZOG7eeA3CRR1D2CK
	qogfnkIPn/atmSX3+vNjTcWBQe95XHObbg==
X-Google-Smtp-Source: ABdhPJzSixO7mw2tqXXFy+1vrxcTqnSC+cfmeAFTa0dXgyleAJap3HCywbAxEYR15MRRW671Yh0cFw==
X-Received: by 2002:a05:6214:21c8:: with SMTP id d8mr11764818qvh.78.1641225228621;
        Mon, 03 Jan 2022 07:53:48 -0800 (PST)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id z8sm30409088qta.50.2022.01.03.07.53.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 07:53:48 -0800 (PST)
Message-ID: <7170b9e3-5a2b-2f33-cec8-81818ba2625d@gmail.com>
Date: Mon, 3 Jan 2022 10:53:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KItYKdwCb5C30mD2PHY0E8Sjb5MRqgdJwxIIugnTeQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <KItYKdwCb5C30mD2PHY0E8Sjb5MRqgdJwxIIugnTeQ@lists.ettus.com>
Message-ID-Hash: PVLK4PC7QTNJLGNZ654QJEGZQKEFXPXN
X-Message-ID-Hash: PVLK4PC7QTNJLGNZ654QJEGZQKEFXPXN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO leakage cancelation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVLK4PC7QTNJLGNZ654QJEGZQKEFXPXN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4463987580636889492=="

This is a multi-part message in MIME format.
--===============4463987580636889492==
Content-Type: multipart/alternative;
 boundary="------------26Uev3mGGZNDaibIFSH0c0QF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------26Uev3mGGZNDaibIFSH0c0QF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-03 05:30, seckinoncu8070@gmail.com wrote:
>
> Hello Marcus,
>
> I did the calibration but it didn=E2=80=99t change the results. There i=
s still=20
> LO leakage on transmitter. I attached the generated cal file location=20
> as a figure.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
How did you get the iq_cal application to run successfully?=C2=A0 The way=
 it=20
was left before xmas was that it was not working.

Could you share with us the output of that I/Q cal run?


--------------26Uev3mGGZNDaibIFSH0c0QF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-03 05:30,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:seckinoncu8070=
@gmail.com">seckinoncu8070@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:KItYKdwCb5C30mD2PHY0E8Sjb5MRqgdJwxIIugnTeQ@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello Marcus,</p>
      <p>I did the calibration but it didn=E2=80=99t change the results. =
There
        is still LO leakage on transmitter. I attached the generated cal
        file location as a figure.</p>
      <p><br>
      </p>
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
    How did you get the iq_cal application to run successfully?=C2=A0 The=
 way
    it was left before xmas was that it was not working.<br>
    <br>
    Could you share with us the output of that I/Q cal run?<br>
    <br>
    <br>
  </body>
</html>
--------------26Uev3mGGZNDaibIFSH0c0QF--

--===============4463987580636889492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4463987580636889492==--
