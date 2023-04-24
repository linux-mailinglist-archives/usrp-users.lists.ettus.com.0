Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B8E6ED55E
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 21:30:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 736C1384760
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 15:30:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682364610; bh=fpexqRnUyuhRgT7nKjRqmq96cZjq8NEkwOQ/gvivuEM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WW635X3a8X+hgaqDbLXRh1HnVu2v+mGdhwlI8vRNyWLt+y0hpQS/hBeLvfAvSyKDo
	 ILdGZa2C1HEcXAbVwXrRorPb1/7bAq3dyWbHceuIveazp7hdWS4ufjAu0/6HDMpjRP
	 rNC7yJEvi2eXUdob03l22IFbMQpbjvr1GiJ1vXVTw2x8dak6liSbFBOGKxfUIua3eq
	 y5u1mVe8z1pXr2VMJsj1KkVb0OsflfVLVu837/RHhUtdEbR0C34+7f7XmMm6+P1FDE
	 OYwqpuE5ZynVS67BlhejCCMZMzGO41HYYASO2ReI/EN5i+bL13hGBGhJBxacO3hkE+
	 9ScPyEkHkxfew==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A8FED3846ED
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 15:29:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ngrHJytC";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-3ef3887e3c0so20794491cf.0
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 12:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682364587; x=1684956587;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Au1fmwiWwowTumVQVlQmyIV49Pp0YKvjfYx5XN4yK10=;
        b=ngrHJytCRf/iBQvjEtz/WrbobB3BN59w0PCzR8++mK8oijJSQ+X6Lt0cP4mR0nc9id
         RP75H0XRGFOsahOi+dCtaWc2Ryi5Bysvf7MND4Krqe+dALC7yMHmaTIIRsraomW+psFH
         JiLbeMWPNpUNsb22zHNdjhJt9XgVllONfs42SVXG0I6bH96jWuz87uaiiZiJsoOSRJ58
         RrRgw+j3dKcK1xx+Lsjr3ZEsAvKbuIR4eNMZQ6ZYwO8b6jjuQtWJpGpvCxq0a9+g44Hd
         17zPpGtn+bgUZTgmO7sJEK713KqB+634rV56Zd26+5DAZw9kFA0HaSY5C9TXR+LChgjf
         AdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682364587; x=1684956587;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Au1fmwiWwowTumVQVlQmyIV49Pp0YKvjfYx5XN4yK10=;
        b=KQx9YJcbwQSf26jikSK5JWYJ0MN6yVnuUB/05k8qTQHO+biPFHF3RjYV2BFhCuxn4A
         EpgUBda2f2P6swyPge2fJJPlAuJqiIOQSwDaOUXWEAes31nY5BoW8csQQzhF3HN6AYqF
         kx2lPsnOXggPQYlFIEbiIl5bQ0BilN67Zu0e89k+Q3esI5YoFwzNbXp5rLYC21cPqCLs
         OlgEVlrG8i+g/oDGjdsVtfzrFKtvxMKfqe1nNLvyvOEuBsrEWC5K1sEic/P6Rh0fgAHc
         03xb7eHG2BCHG48cDZjLuceJup3ZSloBAi7ctFcNpqAyCYn1M1DqzqxQeXp2x8oHZfzD
         rX6w==
X-Gm-Message-State: AAQBX9cVb3ZZznXrvhHqo3Tu/jX5p8PCjCikqZuJpBFswWbRg+5HOXiW
	c0hl92/0RpmR1QtiHEeeN0b/xSR3IIY=
X-Google-Smtp-Source: AKy350aGKhZQeSrpRZnAD8Nr6D6K0d0VDQANcN8Xg0XZoQBcLbIiUkZ4zaqmlUjREYUlR3C6ggNtww==
X-Received: by 2002:a05:622a:188d:b0:3ef:50c2:b96b with SMTP id v13-20020a05622a188d00b003ef50c2b96bmr26833794qtc.23.1682364586993;
        Mon, 24 Apr 2023 12:29:46 -0700 (PDT)
Received: from [192.168.2.177] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id m21-20020a05620a221500b0074df51a90b6sm3783351qkh.60.2023.04.24.12.29.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 12:29:46 -0700 (PDT)
Message-ID: <e2f7ed59-b306-40c0-1046-8efeb3f7e026@gmail.com>
Date: Mon, 24 Apr 2023 15:29:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: page heller <pageheller@gmail.com>,
 "jorge.gonzalez.o--- via USRP-users" <usrp-users@lists.ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <Mailbird-291a700c-0363-465a-9bb0-fe8256352b8e@gmail.com>
 <BN2P110MB174782806660DAEDBDC54B72B7679@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <4670b23b-3cef-24e2-bf7f-2d3b7fdabf6e@gmail.com>
 <Mailbird-f5dead59-e2e1-402b-ae12-931a28d42a16@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Mailbird-f5dead59-e2e1-402b-ae12-931a28d42a16@gmail.com>
Message-ID-Hash: YDOWSJJDIWMF7LO45VXHR746TOUDRZXU
X-Message-ID-Hash: YDOWSJJDIWMF7LO45VXHR746TOUDRZXU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B-210 mounting holes
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YDOWSJJDIWMF7LO45VXHR746TOUDRZXU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6636471058911014631=="

This is a multi-part message in MIME format.
--===============6636471058911014631==
Content-Type: multipart/alternative;
 boundary="------------KOL93PDWYlbZTB0B45LPQvCl"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------KOL93PDWYlbZTB0B45LPQvCl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2023 15:03, page heller wrote:
> Does anyone know the part number? -page
I believe they are made by Lumex:

https://www.mouser.ca/ProductDetail/Lumex/LPF-C011304S?qs=3ZOqpMxxriqLNJacoNbLgw%3D%3D&mgh=1&gclid=CjwKCAjw0ZiiBhBKEiwA4PT9z2rQFYxmNAYskRM_v-HUHZ_46Fde-elA1iAWD_FkVU662_hS-vgC3hoCyFUQAvD_BwE


--------------KOL93PDWYlbZTB0B45LPQvCl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 24/04/2023 15:03, page heller wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:Mailbird-f5dead59-e2e1-402b-ae12-931a28d42a16@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div id="__MailbirdStyleContent" style="font-size:
        10pt;font-family: Arial;color: #000000;text-align: left"
        dir="ltr"> Does anyone know the part number? -page</div>
    </blockquote>
    I believe they are made by Lumex:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.mouser.ca/ProductDetail/Lumex/LPF-C011304S?qs=3ZOqpMxxriqLNJacoNbLgw%3D%3D&amp;mgh=1&amp;gclid=CjwKCAjw0ZiiBhBKEiwA4PT9z2rQFYxmNAYskRM_v-HUHZ_46Fde-elA1iAWD_FkVU662_hS-vgC3hoCyFUQAvD_BwE">https://www.mouser.ca/ProductDetail/Lumex/LPF-C011304S?qs=3ZOqpMxxriqLNJacoNbLgw%3D%3D&amp;mgh=1&amp;gclid=CjwKCAjw0ZiiBhBKEiwA4PT9z2rQFYxmNAYskRM_v-HUHZ_46Fde-elA1iAWD_FkVU662_hS-vgC3hoCyFUQAvD_BwE</a><br>
    <br>
    <br>
  </body>
</html>

--------------KOL93PDWYlbZTB0B45LPQvCl--

--===============6636471058911014631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6636471058911014631==--
