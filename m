Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3EC2201AA
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 03:16:36 +0200 (CEST)
Received: from [::1] (port=55488 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvVzk-0003Vr-1L; Tue, 14 Jul 2020 21:14:00 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:36398)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jvVzK-0003Qv-UV
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 21:13:34 -0400
Received: by mail-qt1-f174.google.com with SMTP id x62so466957qtd.3
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 18:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=gxr95BxkQUZDuW6qqE16zWELPpLrxZIumjp+LpcvSEg=;
 b=rzBJSUL6bA2ukAH4qidVFRcTV+GduAgn14G9+PpMdDE2lGlrQSh8Akd/3IhGpdCIvV
 UDA5XeDayKWCONO/voLSJZZBAjG1zSCQjjMi3cerDFa/v+yfjsiezjOEzD4zL2d1qHPv
 IKsI6OvBrWLGaBKRfHcffJuwHvKo+jh54r0D4XIW1jxlQg/MPHzdqdolIELJBV9hpeVk
 r0Gt3lHvgcq6m0eRHjGWLB9fLPC9Tuu24khlYEy56ODmh+N0WvgFbzVt9vOrozmCIpxL
 yeOaz1MMGlaYXk+zzIgUVXU5CYsPRx0Jw85fYIXcj4B+3hp9IXO0QHdHNBSrWmTsxcqz
 Owhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=gxr95BxkQUZDuW6qqE16zWELPpLrxZIumjp+LpcvSEg=;
 b=lEfVP9DkjAkhiILMtMSM0qtx8ksyrnV+qrsLyT4eyFaVE1UgUeHYRltYYG7jy6QuDc
 hAFVDzKeeSA3+AHkJkEI5AWidf/mQBtbyQcRkX56L6oxiWwA2Uq0U4Rx+KtZxylLfVyQ
 lbjT5IoSUVevgPR2p0xMLDd6hsZ3CYvcryN1tppgnwRG+MNGZby5JtW5U5RZspzrRp2t
 b4FhJD7NYjNkco9hNOE2ZFgJsX+M2Mshm254u7ZSwWjm/JKtLfyQDOL5CCwdYlm/wCKn
 GzzKOewgW5O1q91AqDUibI5hf2dJvk7Y4osYA57YmqghxwIZkVBKfPV/lIbYitQxtOzu
 Cllw==
X-Gm-Message-State: AOAM532MD9/78otynKfno8GTMt4ln51XL/gSaWwmOOD9FV6vGJwVqfuN
 d3NmQKiIIvMt7yjVHjBrq+AZYVGa
X-Google-Smtp-Source: ABdhPJwCbv4jk6A5sIb6/wpckzNidWN3OLvTvA3g1E9ZmAZwf0nX6LdKnJk8EqCotK8VQx5GgeV97g==
X-Received: by 2002:ac8:3129:: with SMTP id g38mr7435216qtb.92.1594775539100; 
 Tue, 14 Jul 2020 18:12:19 -0700 (PDT)
Received: from lab.localdomain (d72-38-46-81.commercial1.cgocable.net.
 [72.38.46.81])
 by smtp.googlemail.com with ESMTPSA id h131sm599708qke.29.2020.07.14.18.12.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jul 2020 18:12:18 -0700 (PDT)
Message-ID: <5F0E57F1.80906@gmail.com>
Date: Tue, 14 Jul 2020 21:12:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com>
In-Reply-To: <Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com>
Subject: Re: [USRP-users] Compiling UHD Error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4121413823689293053=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============4121413823689293053==
Content-Type: multipart/alternative;
 boundary="------------030709030607000901030204"

This is a multi-part message in MIME format.
--------------030709030607000901030204
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/14/2020 08:23 PM, Larry Dodd via USRP-users wrote:
> Using Cmake I get the following error.
> CMake Error: The source directory 
> "C:/uhd-master/uhd-master/build/CMakeFiles" does not appear to contain 
> CMakeLists.txt.
> Specify --help for usage, or press the help button on the CMake GUI.
> I searched the computer and can not find CMakeFiles.txt anywhere.
> Larry, K4LED
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
I'm not a Windows build guy, but unless you have a good reason to build 
it, you should avoid that and use a pre-built installer for UHD.

https://files.ettus.com/manual/page_install.html



--------------030709030607000901030204
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/14/2020 08:23 PM, Larry Dodd via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com"
      type="cite">
      <div id="__MailbirdStyleContent" style="font-size:
        10pt;font-family: Arial;color: #000000">Using Cmake I get the
        following error.
        <div><span style=" color:#ff0000;">CMake Error: The source
            directory "C:/uhd-master/uhd-master/build/CMakeFiles" does
            not appear to contain CMakeLists.txt.<br>
            Specify --help for usage, or press the help button on the
            CMake GUI.</span><br>
        </div>
        <div><span style=" color:#ff0000;">I searched the computer and
            can not find CMakeFiles.txt anywhere.</span></div>
        <div><span style=" color:#ff0000;">Larry, K4LED</span></div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    I'm not a Windows build guy, but unless you have a good reason to
    build it, you should avoid that and use a pre-built installer for
    UHD.<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_install.html">https://files.ettus.com/manual/page_install.html</a><br>
    <br>
    <br>
  </body>
</html>

--------------030709030607000901030204--


--===============4121413823689293053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4121413823689293053==--

