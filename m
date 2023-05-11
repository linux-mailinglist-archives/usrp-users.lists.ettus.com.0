Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A409C6FF3AA
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 16:10:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFE8F3846AA
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 10:10:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683814237; bh=ChKntZSKrfWeN3d9inISbcZ6shcJnpqxi6FeHyrkl3g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MWxvaeO2fuuZBt7e8yywal0vH8sZzKuB4kiZsz+789ADXx8Git3QhVjMqjd7mScQl
	 i+E626bBjSyG9q61ARYuJJcg7xbdL45aX5oG3PhK9s+189tkQ4U1A+v/lZ7rpoBnBA
	 6gNFyYGFfcwk+lYxvQWbzPPc6ecyD/rb8b4AAk8mFxjpMPoPCIAB7ytRCbw7HcwmwH
	 bMBXhO5YxpRNlZN4Lyh3HBpaVpiiu9pv6GPVwKRjLGk7TRc9u4eP44QDbZ2Y4ZLkqi
	 JrAytuALbmQFSF57TwiUsel9+zybgXHrfXyCh+M0bE7Mi3PVI1gFnE+S4rM+bmSJmw
	 JkBoHuU0sA+sg==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id B5F603837AC
	for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 10:09:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jxf0NxXR";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-75771dd7242so292585985a.1
        for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 07:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683814194; x=1686406194;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6aC3sxof6Cfhup5XD4t5IHJo+UKccl4FC/EVJD7im+I=;
        b=Jxf0NxXRITvvydilY2A9vS7FzdDA+ZujViFNObRn4PsB9Rn7k74UT8ii7DAcs1TRns
         JxBzwBbvEjB9dadigYC/6ASSPP3OtNL6/WWWDYt/7A6F/7657po8L+9qnRL3pEvo4AvR
         I/X8hQkzSxYEK2dzfMz3UXb3Z/IehLCANCqmUivpK9eBQscvk3PTQsHD8ktB4KGULlIy
         u5booPFntm9fHsi8u04VgiC4CBihEhy2zfjA924PBlV5IgRqCKNvaHRFNqq+ckfaib2Z
         38H6gsbOm+iD3OlZ79Q2vEJBlLnhS3MgZu47B2JaiSiP3CT7GgXnze0PPCREfDRjWcO9
         qz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683814194; x=1686406194;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6aC3sxof6Cfhup5XD4t5IHJo+UKccl4FC/EVJD7im+I=;
        b=EhX/8WXx+xENPC1puDICqHAju6DGkSaXP22wmoBDbhROfduZ4q0Lw3n+NA+0zSCz/t
         /RxXytUI+wCnNto+j/NJNgoBQCzG96E0XUg+RZ+shYeaO87m37Z291jAzoBf1UKS4NFX
         8Xgvq9/BN3QQ4EjN0r6mX9olPDu9d56JNoQYlT75mIbS6j3+Hk3cLaa4mJuvCyj5G7dZ
         AbISMx1K1DlVhmpyf7wxKgofIA5C4SAGhcGIdCbFfhrO/rbuEpVzpOvvAaoTXBdKHniq
         674VuYrWLUm3qt2jqjxAHrBr0lSrKyecMIbVG6qZCDNEl/jGcYiNfH7AS7ujIMAulHom
         6tNQ==
X-Gm-Message-State: AC+VfDwAg8pKZdoGM5t/3zaFc2XpfT4xuMDC6KJUGpxkI817drpvQ+SR
	wMdLdbYHw+UwkpZktiZ9iHdeUocR4gM=
X-Google-Smtp-Source: ACHHUZ5L12MrvJKxYSsozXhYTeL0czpY8s83O3n4SXJQGVBIO1kOfFH/qa4qyhR0KWBmpNEpp2K9Bg==
X-Received: by 2002:a05:6214:62d:b0:5ef:6839:9775 with SMTP id a13-20020a056214062d00b005ef68399775mr26686236qvx.49.1683814193662;
        Thu, 11 May 2023 07:09:53 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id t9-20020a0cef09000000b0061b2a2f949bsm2283570qvr.61.2023.05.11.07.09.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 07:09:53 -0700 (PDT)
Message-ID: <964d031f-c4f9-84df-7434-57e4e3695e23@gmail.com>
Date: Thu, 11 May 2023 10:09:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AS8PR08MB87062FF6545E04DCB809C111B0749@AS8PR08MB8706.eurprd08.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AS8PR08MB87062FF6545E04DCB809C111B0749@AS8PR08MB8706.eurprd08.prod.outlook.com>
Message-ID-Hash: NW3YZGADIWJR4NFT6SGFVSTJR6YQNNVP
X-Message-ID-Hash: NW3YZGADIWJR4NFT6SGFVSTJR6YQNNVP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with timed commands when initializing TX streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NW3YZGADIWJR4NFT6SGFVSTJR6YQNNVP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1637600715234693999=="

This is a multi-part message in MIME format.
--===============1637600715234693999==
Content-Type: multipart/alternative;
 boundary="------------kf7B6BjyYNv4tajHlJJRkygS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kf7B6BjyYNv4tajHlJJRkygS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/05/2023 09:20, Roeland Osaer wrote:
> https://github.com/EttusResearch/uhd/issues/678#issue-1705798760
>
>
Thanks.=C2=A0 I'll see if I can get R&D to look at this in the next littl=
e while.


--------------kf7B6BjyYNv4tajHlJJRkygS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/05/2023 09:20, Roeland Osaer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR08MB87062FF6545E04DCB809C111B0749@AS8PR08MB8706.eurprd08=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        <a
          href=3D"https://github.com/EttusResearch/uhd/issues/678#issue-1=
705798760"
          id=3D"LPlnk724355" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://github.com/EttusResearc=
h/uhd/issues/678#issue-1705798760</a><br>
      </div>
      <br>
      <br>
    </blockquote>
    Thanks.=C2=A0 I'll see if I can get R&amp;D to look at this in the ne=
xt
    little while.<br>
    <br>
    <br>
  </body>
</html>

--------------kf7B6BjyYNv4tajHlJJRkygS--

--===============1637600715234693999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1637600715234693999==--
