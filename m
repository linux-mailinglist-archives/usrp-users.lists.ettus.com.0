Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B19AC7B5469
	for <lists+usrp-users@lfdr.de>; Mon,  2 Oct 2023 16:04:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D391738555C
	for <lists+usrp-users@lfdr.de>; Mon,  2 Oct 2023 10:04:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696255495; bh=cwaIaZRjG3/kmajxAgYZ9h+58X17DAfguxnySu43IS4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=i23Yr7rGO+ZQoGLa9M4mSZ3eEmMADZbxK+TAmr3XOOqa9PNGatvNN2iuot5MhG2uX
	 WAiDKbgw/RIplB8QAMgTEQ1yNeI27n2wlOj2xxE2m6hyCxWPIlJN0Pv6TVGDO2jrqB
	 GWU0Y3jtIleNjUrVXb+ESNjAyDuC+LuYNt7Nj1V3FwMm7BIi9tShs8eVfODk6yhD9X
	 Ggw9CfdaLTFMjpXBmhFMr1f1negfvo17WzTl8fc2JPcjGkFlm5Ks/epsupn2RSPf8Z
	 wNBxH+j0gCfoKTTRJnXPO4cJUTQlKfB/4bF3zTMr5I0M4qOuA/LhqX7Y7OUBjDw00j
	 OX9jVK/3zco5w==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 5FF123808E7
	for <usrp-users@lists.ettus.com>; Mon,  2 Oct 2023 10:03:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SxKzFfg3";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4190890d201so54450751cf.2
        for <usrp-users@lists.ettus.com>; Mon, 02 Oct 2023 07:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696255438; x=1696860238; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b1x4tg9HKsex4NhwUUhRDT7ZvVZ2PGr6LSphKA5JJKU=;
        b=SxKzFfg3AgbbcPuSHnj9Wro0bqdthuVw15+AjsdAsiGEg31oe5E518pyZqcZFSfaDS
         3lLE0EyUSA6xBgn0/rnut8uA6F3CVN26UNiuUhUUPgsks0QJbK4AYZaVISkc/LpN1WMF
         kZjOGuuyR41Hnm8gAxfy6I5gSSAQLV33Uvdd41uhX6tTxe22usDvczjatLgB8GZ/UKVO
         C+Q8XKBqcfFds7VXlAQ+pCrF39sZVC92eJuPabJAoBLk0gGPOdhwyPA0GX2EmmTG7STH
         KHQUXoNB993qx3DHUN9o8l9bB045N27W8cohxOvmd97hBMORmvV9xHfwxXi8PQBuU8tX
         vIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696255438; x=1696860238;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b1x4tg9HKsex4NhwUUhRDT7ZvVZ2PGr6LSphKA5JJKU=;
        b=YNhOcUWE2Crabl9K6m6RNTT+xYmZGasumB4hlMwC+NOVBbNny8iwnENH2a5GL6D9KP
         kAlSijdmp5Evy8DWO2w+Qp7NeU6XZEqj16ZzoWQLjS/22F/oz0UZd7NRsHZ8LhKTmyhq
         kvt4WUtBFD4BMeOIlrVsX1jPqMjHxh+RxZud5oOj49LmhwjZJqOoVQtphu63ZEPaxNIQ
         nE1yGzHQfpMTjrAEopX0rOM5qdsBPUYLXLdExztydx8qofEeP31za2CqnVIxo0YgNdoR
         N7sU2KoHPKED3xCKxKLXk2EUqTO+q9OmNOd8baE6OOKK9gNvUW94hBIIx93PSox9seTA
         B8+w==
X-Gm-Message-State: AOJu0YwwzVf3F7NgSCSuc/55f2LYAQ5ch4eQc33fqI3paU1+62cuGLnl
	JBc9AyEON7Yg9qT4gfqG900uYoqLyUw=
X-Google-Smtp-Source: AGHT+IGOhkBRk14vx72k0fwHV2/l0cYDF/8Xn5MbaUDkl+X5DXk31IAlpDb6t766QdD05Xz6aqF02A==
X-Received: by 2002:a0c:c346:0:b0:656:4e60:8ceb with SMTP id j6-20020a0cc346000000b006564e608cebmr9801341qvi.24.1696255438233;
        Mon, 02 Oct 2023 07:03:58 -0700 (PDT)
Received: from [192.168.2.133] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id jm11-20020ad45ecb000000b00658266be23fsm7993693qvb.41.2023.10.02.07.03.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 07:03:57 -0700 (PDT)
Message-ID: <eb80a5b9-cab8-5f06-a732-d0a64f7ae1bf@gmail.com>
Date: Mon, 2 Oct 2023 10:03:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA@lists.ettus.com>
Message-ID-Hash: FP5UYHGY5WMV3WG5NZQCERNXU53HBGA6
X-Message-ID-Hash: FP5UYHGY5WMV3WG5NZQCERNXU53HBGA6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus, USRP N310, MPM major compat number mismatch error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FP5UYHGY5WMV3WG5NZQCERNXU53HBGA6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7092984074429809998=="

This is a multi-part message in MIME format.
--===============7092984074429809998==
Content-Type: multipart/alternative;
 boundary="------------9fqD7zB3CzioS00RLJAXIkT2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9fqD7zB3CzioS00RLJAXIkT2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2023 07:46, usama.khurram@hotmail.com wrote:
>
> Thanks, I applied, also downloaded something using this 
> URL(https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card) 
> for my N3XX, now Folder is updated but still getting the same error. 
> Please help me once again.
>
> usama@modena:~$ uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; 
> UHD_4.0.0.0-240-gb38c9d83
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=False,addr=192.168.30.212
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never 
> fully initialized!
>
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function 
> 'set_device_id'
>
> usama@modena:~$ uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; 
> UHD_4.0.0.0-240-gb38c9d83
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=True,addr=192.168.30.212
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never 
> fully initialized!
>
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function 
> 'set_device_id'
>
> usama@modena:~$ sudo uhd_images_downloader --type n310 --type sdimg
>
> [sudo] password for usama:
>
> [INFO] Using base URL: https://files.ettus.com/binaries/cache/
>
> [INFO] Images destination: /usr/local/share/uhd/images
>
> [INFO] No targets matching '['n310', 'sdimg']'
>
> usama@modena:~$ sudo uhd_images_downloader -t sdimg -t n3xx
>
> [INFO] Using base URL: https://files.ettus.com/binaries/cache/
>
> [INFO] Images destination: /usr/local/share/uhd/images
>
> [INFO] Target n3xx_common_sdimg_default is up to date.
>
> usama@modena:~$ sudo uhd_images_downloader -t sdimg -t n3xx
>
> [INFO] Using base URL: https://files.ettus.com/binaries/cache/
>
> [INFO] Images destination: /usr/local/share/uhd/images
>
> *[INFO] Target n3xx_common_sdimg_default is up to date.*
>
> usama@modena:~$
>
>
> long wave ultraviolet wavelength_______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Once you have the image, you have to program it onto the uSD card on the 
N310.


--------------9fqD7zB3CzioS00RLJAXIkT2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 02/10/2023 07:46,
      <a class="moz-txt-link-abbreviated" href="mailto:usama.khurram@hotmail.com">usama.khurram@hotmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Thanks, I applied, also downloaded something using this
URL(<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card">https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card</a>)
        for my N3XX, now Folder is updated but still getting the same
        error. Please help me once again.<br>
        <br>
        usama@modena:~$ uhd_usrp_probe</p>
      <p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
        UHD_4.0.0.0-240-gb38c9d83</p>
      <p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=False,addr=192.168.30.212</p>
      <p>[WARNING] [MPM.RPCServer] A timeout event occured!</p>
      <p>[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was
        never fully initialized!</p>
      <p>Error: rpc::timeout: Timeout of 2000ms while calling RPC
        function 'set_device_id'</p>
      <p>usama@modena:~$ uhd_usrp_probe</p>
      <p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
        UHD_4.0.0.0-240-gb38c9d83</p>
      <p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=True,addr=192.168.30.212</p>
      <p>[WARNING] [MPM.RPCServer] A timeout event occured!</p>
      <p>[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was
        never fully initialized!</p>
      <p>Error: rpc::timeout: Timeout of 2000ms while calling RPC
        function 'set_device_id'</p>
      <p>usama@modena:~$ sudo uhd_images_downloader --type n310 --type
        sdimg</p>
      <p>[sudo] password for usama: </p>
      <p>[INFO] Using base URL: <a class="moz-txt-link-freetext" href="https://files.ettus.com/binaries/cache/">https://files.ettus.com/binaries/cache/</a></p>
      <p>[INFO] Images destination: /usr/local/share/uhd/images</p>
      <p>[INFO] No targets matching '['n310', 'sdimg']'</p>
      <p>usama@modena:~$ sudo uhd_images_downloader -t sdimg -t n3xx</p>
      <p>[INFO] Using base URL: <a class="moz-txt-link-freetext" href="https://files.ettus.com/binaries/cache/">https://files.ettus.com/binaries/cache/</a></p>
      <p>[INFO] Images destination: /usr/local/share/uhd/images</p>
      <p>[INFO] Target n3xx_common_sdimg_default is up to date.</p>
      <p>usama@modena:~$ sudo uhd_images_downloader -t sdimg -t n3xx</p>
      <p>[INFO] Using base URL: <a class="moz-txt-link-freetext" href="https://files.ettus.com/binaries/cache/">https://files.ettus.com/binaries/cache/</a></p>
      <p>[INFO] Images destination: /usr/local/share/uhd/images</p>
      <p><strong>[INFO] Target n3xx_common_sdimg_default is up to date.</strong></p>
      <p>usama@modena:~$</p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">long wave ultraviolet wavelength_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Once you have the image, you have to program it onto the uSD card on
    the N310.<br>
    <br>
    <br>
  </body>
</html>

--------------9fqD7zB3CzioS00RLJAXIkT2--

--===============7092984074429809998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7092984074429809998==--
