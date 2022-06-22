Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFF955407E
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 04:23:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 934023840E1
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jun 2022 22:23:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655864607; bh=t66dyAu2Q7MzSXK93t9GDbQNgP7AfumXnl5mAYvLq3k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hdUxWb6PJr3JpAS4mI5wqUyWahvBxT5ibhZImqOtnTwBWmrNftDIYYIAuA4b/iny9
	 Oj2B9/IG+O4aQLj1BOwyAN9a49ELx/NvogW9bsYsPoyt+kLyU4mcjzaLK0xd7wmQlV
	 2yePJFSsxbEGkIidV3QtMnXscPBKGeYEoTOonD5gJz3HjBHy3moeDozqRNIgmJM3vH
	 aTKYoB4OrOgk5D4I0vQYA116SLsVWKXuxDHWahksNI74nWQU3DPG3X31k57lhfjt9u
	 eOVBT45mobcjKvDO5evk3GHf+ONDPNOs2Ejx4FZV5FQ+SAd2ltlloiXBjozyJc7BLl
	 OmmP6aqn3omBA==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 400C0384054
	for <usrp-users@lists.ettus.com>; Tue, 21 Jun 2022 22:22:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TBdDq5ya";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id q4so11152885qvq.8
        for <usrp-users@lists.ettus.com>; Tue, 21 Jun 2022 19:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=3thjIoAukd2d2w8pSd3aoZOQYgd8HzDqWCVIMI+eGlU=;
        b=TBdDq5ya1tMN8wfAjPWVX3R+uIr7gExeu0vYBx8WNqUpgLshQFsoojqgs33jxaE46r
         EPaohlcTAydyZX1AMaFxxw3ZjKQv1nF+D4PjIGHAdHxQrMnPkOZq4EW+WJW+I8qFlhor
         YgskzA/JQEJhGQp7/mW8A2W8+g+1snKAXCiYH+WBIqBq1vWRvT/BI7sZ1FnInf5PRzkM
         jM3u6FkyTkfM4MHuKC00XFTEcqkXZZgRpHEogutwrMV3vbG1F3sgoTaj3dGzko9bLMrP
         NzZkxTLlBOhnMRou/aplEd+ixCttQpIJv9QNB5dv3mVe1ipTUNhEmSl4YATOwkJ+DenR
         QcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=3thjIoAukd2d2w8pSd3aoZOQYgd8HzDqWCVIMI+eGlU=;
        b=Fi83MC3ybE7u7BZHc5lR4XKwtwX6Hv4Qw66j+jqPvxbvVq3gYjOudi399VaJpkQ/1q
         OAdTINAWrZYp0ZanhTE85RAsjx2TrOB6JZTTAz10r2HOBJVc/coqX+GaMzt1oGYRtlsl
         qslXdauSpLP+C/4e5ah0MhOtGhPOoS6jlJ1AasmvV2hxMtGou2aTRc2BHUlnQlXfSVdg
         3yvcg8wFcdPO6iGm8li05/X2n13iCPXEB3n3g4vfRJ4PlhbjETN/DmiP+e9zLIpMu5DI
         pXwFiBvY5/rNunEIOXGTPTT8tjV7pnzJ9secmYG2nQeM97jHiOlTAdBnN9q3zicjXMC0
         PQ8A==
X-Gm-Message-State: AJIora/8Lu4gl1VpuCMTDPDzXbCFVC7UY9Q4k2AbiA4jqWBw47QcjIsr
	YYL7z3f5fZY4LjMHLzKpvtKoOKSo3uSJFHH5
X-Google-Smtp-Source: AGRyM1ttW6GGSLGySqs+YMZHkBUfagaMQHZoHcTPKGaw2Vf/YPMZDcK8dFa3tNWpViZ8ff34oKtl2w==
X-Received: by 2002:a05:6214:1bc5:b0:464:559c:3f13 with SMTP id m5-20020a0562141bc500b00464559c3f13mr25994823qvc.110.1655864541139;
        Tue, 21 Jun 2022 19:22:21 -0700 (PDT)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id bq9-20020a05620a468900b006a700aad48bsm16901479qkb.91.2022.06.21.19.22.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 19:22:20 -0700 (PDT)
Message-ID: <09b2f83b-c780-3a4b-71ea-ef676b679a1d@gmail.com>
Date: Tue, 21 Jun 2022 22:22:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR14MB4192956CB99727BB17CC8922CDB29@MN2PR14MB4192.namprd14.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR14MB4192956CB99727BB17CC8922CDB29@MN2PR14MB4192.namprd14.prod.outlook.com>
Message-ID-Hash: UYMIC7MLNTU66XB4ZZ55SVSPXOUVP26W
X-Message-ID-Hash: UYMIC7MLNTU66XB4ZZ55SVSPXOUVP26W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to setup N321 master clock rates ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UYMIC7MLNTU66XB4ZZ55SVSPXOUVP26W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5834030438827711388=="

This is a multi-part message in MIME format.
--===============5834030438827711388==
Content-Type: multipart/alternative;
 boundary="------------C9Rp00P7UYTMRSPcNcQdp90K"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C9Rp00P7UYTMRSPcNcQdp90K
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-06-21 22:19, Xingjian Chen wrote:
> Dear all,
> I have an N321 and trying to change the tx rx rate by using argument=20
> --rate. But it fails to change it since the master clock rate is=20
> 245.76MHz and the tx or rx rate can only be a fraction of that.
> May I know how to change the master clock rates=C2=A0to 200MHz. The def=
ault=20
> is=C2=A0245.76MHz. Is there any simple command to do that by the C++ fi=
le=20
> control method? Thank you in advance.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Simply use the "master_clock_rate=3D" device argument when creating the=20
multi_usrp device in your program.

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Suppo=
rted_Sample_Rates


--------------C9Rp00P7UYTMRSPcNcQdp90K
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-21 22:19, Xingjian Chen
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR14MB4192956CB99727BB17CC8922CDB29@MN2PR14MB4192.namprd14=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Dear all,</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I have an N321 and trying to change the tx rx rate by using
        argument --rate. But it fails to change it since the master
        clock rate is 245.76MHz and the tx or rx rate can only be a
        fraction of that.=C2=A0</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        May I know how to change the=C2=A0<span
          style=3D"font-size:12pt;background-color:rgba(0, 0, 0,
          0);display:inline !important">master clock rates</span><span
          style=3D"font-family:&quot;Lucida Sans Unicode&quot;,
          &quot;Lucida Grande&quot;,
          sans-serif;font-size:14px;background-color:rgb(255, 255,
          255);display:inline !important"><span
            style=3D"font-family:Calibri, Arial, Helvetica,
            sans-serif;font-size:12pt;background-color:rgba(0, 0, 0, 0)">=
=C2=A0to
            200MHz. The default is=C2=A0245.76MHz. Is there any simple
            command to do that by the C++ file control method? Thank you
            in advance.</span></span></div>
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
    Simply use the "master_clock_rate=3D" device argument when creating
    the multi_usrp device in your program.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Supported_Sample_Rates">https://kb.=
ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Supported_Sample=
_Rates</a><br>
    <br>
    <br>
  </body>
</html>

--------------C9Rp00P7UYTMRSPcNcQdp90K--

--===============5834030438827711388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5834030438827711388==--
