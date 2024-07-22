Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AB09396AE
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 00:44:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 184313859BF
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 18:44:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721688255; bh=wEwwmWx/ZyougUqY25Q4fGEzemGH7Lkkj0yNMYbrpK0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HUpzoEkRB7aZzyNYy8ql8a6IO5VFb9zf+Qos9LFxlmrKPSEBkOMtNXDtaxFzaKfsr
	 dDCR4V+mnpHlAfPkSpIskWPpIhS84oSNIzCOjfTJA5yocAFHXmic1ZiI6WHxC8EDhC
	 XjnzhjZL8M6s6C0HUzXSkCU29R9sBHYj9ZiJ/wb3C5OhZ3FL65VIK2gOoRftCnqdzs
	 lPe71+aShu58W8+EYZWZCFO+QwWP4RIdA71Q5a6t3BfWW0hM6tjuTaRdU2xtPZ749m
	 RO4yxegR1aRdlaOYWxYdOaUEOKB+AOVUhWsg5AsiXaYKSn3V5YMhp004CYC/I1gB+C
	 XY4AhtEula4gA==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 80FD03859A1
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 18:43:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QsKW49U6";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6b79c27dd01so28183006d6.3
        for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 15:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721688239; x=1722293039; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CV9wdXD8JivyIUVeVptnfvh6bMKzmTI8V+sQwyH41jk=;
        b=QsKW49U6UcoQY8GZg/b2qgvK1rSPZQPCLwSqYSCs/k5Ls+2BWupuGVQM/aLnY1qMYz
         XQrk2uBIwSht8WA9qi20B1iX0iu+Wt6vNAyK2fQWqHeYYcgEy6lMzpxlJWrIXvdwdwIT
         M/v/gLOtU2QRgzamZ8R/8xmB5F4bHlCKDkEbJqlySHfxe5wwaklP79DWQkHOm9QZ+Sxx
         85ELEtwp9TH6v/K3EWsBJ3RfjBAaQoNTKg/z1GXRr2pvyERaTe7q2EtbUXzJKgFSFnhy
         X9Fma55xkv/r6qVxkoCxwWm5+vv3W0cof7Q/tYhHC76b+hcbFIuhpvCgTC/nejdTOAJg
         SlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721688239; x=1722293039;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CV9wdXD8JivyIUVeVptnfvh6bMKzmTI8V+sQwyH41jk=;
        b=GbVgLzXRJvXWQnXweRGgaM72lN59bTrkqWcVbbXqgZjG1anw6j8Q9QqG5RI1Y2Ko95
         kAT42HyADb6L7kKPafRAWienb8VjFL6AP7sSlUWLAJLb2wHhAQuHesFPyHapuAWUxhrL
         C4V28itZx/3z59XxlbIjr1o6ko8y0H7rpaaB/xZvXy2X8CzxOF8Sdu5ZPOWWioROsgNL
         nxEPQ3TV0jUlKX4QMgUAIHtDeuJRPa8DI1XiBbBTq2oPfVXh4rpeoP/beIkmvRitdrjo
         wUIIC85vpLj+5Pu1gL8Zpq828N01lB/UletGNhb+x6gfNUMwYFMAK2kGEjE7iNKu3n+X
         qg3Q==
X-Gm-Message-State: AOJu0Yw49hnsFZVY75AivmMIglzuzLoBCZkPR6FyjJtiGigjOAj5Gu08
	NzANyubo3i28Wk+4LmsmjUaOlGdavTdCnsCX4du0FEad92ySZpVysU7TMA==
X-Google-Smtp-Source: AGHT+IFxSPGMR3BGpFaYVjNA2JgDN1Upqsvn20RObGU2CA4NWZHmDMp3YnDFG7GyHvzVDjGn/DcrtQ==
X-Received: by 2002:a05:6214:1c4e:b0:6b7:9bc1:708a with SMTP id 6a1803df08f44-6b95a7370f1mr139915636d6.55.1721688238556;
        Mon, 22 Jul 2024 15:43:58 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b85542ae24sm35394566d6.53.2024.07.22.15.43.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 15:43:58 -0700 (PDT)
Message-ID: <116ed2b0-3e83-410b-8075-01f1afa25037@gmail.com>
Date: Mon, 22 Jul 2024 18:43:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo@lists.ettus.com>
Message-ID-Hash: NGOGJCBMBXOPFFHWKY6JRBLJ5LPZVCM4
X-Message-ID-Hash: NGOGJCBMBXOPFFHWKY6JRBLJ5LPZVCM4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NGOGJCBMBXOPFFHWKY6JRBLJ5LPZVCM4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3870300687268488908=="

This is a multi-part message in MIME format.
--===============3870300687268488908==
Content-Type: multipart/alternative;
 boundary="------------IF0stHaxg15SpVKEf1p3tVpV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IF0stHaxg15SpVKEf1p3tVpV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/07/2024 18:39, cjohnson@serranosystems.com wrote:
>
> Hi Marcus,
>
> Thanks for the answer in 2).
>
> What about 1) *FPGA Rx Buffer Size:*
>
>  *
>
>     What is the FPGA Rx buffer size on the X310?
>
>
I honestly don't know, and I'm not an FPGA guy, so diving into the FPGA 
code likely won't enlighten either of us.

Martin likely knows, but he only dips into this forum occasionally.



--------------IF0stHaxg15SpVKEf1p3tVpV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/07/2024 18:39,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>Thanks for the answer in 2).</p>
      <p>What about 1)=C2=A0<strong>FPGA Rx Buffer Size:</strong></p>
      <ul>
        <li>
          <p>What is the FPGA Rx buffer size on the X310?</p>
        </li>
      </ul>
      <br>
    </blockquote>
    I honestly don't know, and I'm not an FPGA guy, so diving into the
    FPGA code likely won't enlighten either of us.<br>
    <br>
    Martin likely knows, but he only dips into this forum occasionally.<b=
r>
    <br>
    <br>
    <br>
  </body>
</html>

--------------IF0stHaxg15SpVKEf1p3tVpV--

--===============3870300687268488908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3870300687268488908==--
