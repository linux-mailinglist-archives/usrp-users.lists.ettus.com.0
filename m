Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4162297CEC8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 23:39:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A94438579D
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 17:39:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726781956; bh=cI6EKTTVw1ax5MWKAIGdD0t6mwHVQwsvTKQGMfzKvz4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dRpXj44+cTQ/bvNV0StD4CB33RahcbrpYOkmNoYZiQqsRldlsFnI+u/jDYxKtUtVM
	 gWgrFJkgSBWV3qTejnlaaqQu68TTCZdG9H/aNd/a/KHQEHHh+LCtfwXnBOFds5OMvz
	 Dr6RaUtk1HGAuvCJZ665IcURMXIhtsInJu/2TbDMJino+XekeCcq+8dUn62+Afndhy
	 KstUMV/YXeCSR5Qollyr3bF27cKMelxvTUa2A8ELHNATVztmal+xKrmvQImMP+aFrh
	 1aJz6Rfe3/IrCokUuw4jWUGTxz+GKfGb4sVaAV4G2nCthdu0Yx4yF+veeQbhlAzUHk
	 HkhvAQKmFWWvA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 56B2B3858E7
	for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 17:38:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Cq1+7dRD";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6c351809a80so9844056d6.1
        for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 14:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726781890; x=1727386690; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N4k70oF/qD3muasBTAWBS66EXOpLMf2odG/k6Jmy/uA=;
        b=Cq1+7dRDJQQPnHm/sc6gNe7hYyqDLu1xMpT0x5xWFppap3K7RNiKDd9Nt5dNNCDGTk
         tnhChdNSkJ5HbKqCS6JQiC4k67rZ8HpcFHKzPyq87r4Y0kcfk7ogGJTpBc859h5cjzhV
         sLF2w9Bu6vO2ySUZ8hWxQBMic0cQeWNhkXw0WSgwZObRYRP74TOKL21OS//oKw/mShXd
         c5CObF6+hV5m2VbJ73ml9+spInaGYV/sabmMTEt7eRGzDhy7pD1nAOpt7sY3CYpFL7Q3
         ZoJK26p5P3BXefmnHRaQ/d1BYLfHoU8Y5vsf6Mw8g/5olvwDXgngxgw6xjGewca8pOl0
         yHeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726781890; x=1727386690;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N4k70oF/qD3muasBTAWBS66EXOpLMf2odG/k6Jmy/uA=;
        b=TyiHHTkmDAMo2Tst5hvwjFoRH0DQ4QblDq2VSq5haXpAsbf5zQzx0lO+lGMSd8k7mO
         dgpXzn5bjoLusO+FEL/PjqXoWaRz3lAh7pAl+af/B4LOTWEQ+ZpownH9eYUTr5jqWg0o
         /NQBLB5srjNH0SSZo2XEoZ7hpiXeZAlznWL4wRS/b9oxZHNmyvYDMY6Y72Xdoegohi9A
         7oc07rA6lmJwuGmFg74YweO7K9DCM/NWdstiT/fAtPm9hh2tendsVfUPpaJl8Dg7hmD6
         uTUuE/GZwzBv9wqVc65Df3QSK1Y3JLxuUnzcdqevGDz4UrOJrJ3oG1T0+meqR/8Q4OlT
         Q6og==
X-Gm-Message-State: AOJu0YysHnVCNl/MYtrGj3NWsb5R+9fStjqiy/sPrEWVlLM3U20djSUm
	maSFigJysTzPBbnPg4SHftTbdSuXsFqK4cRBbHWgMr1ayHCBsv/HsegPzg==
X-Google-Smtp-Source: AGHT+IFtRlY8Ruq2EbRr9RPqvGe121jfbhIBD/3R4GpKkyaocJTTUaOGnP5AzmhktzUgqZIWj3ptOA==
X-Received: by 2002:a05:6214:5982:b0:6c5:ab33:6300 with SMTP id 6a1803df08f44-6c7bd4cf296mr6733516d6.6.1726781890381;
        Thu, 19 Sep 2024 14:38:10 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c75e57d662sm11068016d6.131.2024.09.19.14.38.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2024 14:38:10 -0700 (PDT)
Message-ID: <9767f2b1-c8ef-4930-97f7-234ead276de1@gmail.com>
Date: Thu, 19 Sep 2024 17:37:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB91263DCEEB7645BDCC4BE371EC632@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB91263DCEEB7645BDCC4BE371EC632@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: PLKVABJ3LWI76JKKFR2CZJTPN3EDCLMQ
X-Message-ID-Hash: PLKVABJ3LWI76JKKFR2CZJTPN3EDCLMQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Automatically power on after power loss
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PLKVABJ3LWI76JKKFR2CZJTPN3EDCLMQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4789850563985724802=="

This is a multi-part message in MIME format.
--===============4789850563985724802==
Content-Type: multipart/alternative;
 boundary="------------IqKvZDYG1t3Ar8R0MeMMGqp0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IqKvZDYG1t3Ar8R0MeMMGqp0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 19/09/2024 17:28, Eugene Grayver wrote:
> Hi,
>
> The 'soft' button on the N32x does not have an 'on' state.=C2=A0 The X3=
10=20
> has a real button that can be pushed in.=C2=A0 I have remote N32x devic=
es=20
> that are not (easily) accessible.=C2=A0 How can I make sure they power =
up=20
> after a power outage?
>
> Thanks.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Eugene:

I believe that what you want is this:

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_eeprom_flags


--------------IqKvZDYG1t3Ar8R0MeMMGqp0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 19/09/2024 17:28, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB91263DCEEB7645BDCC4BE371EC632@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        The 'soft' button on the N32x does not have an 'on' state.=C2=A0 =
The
        X310 has a real button that can be pushed in.=C2=A0 I have remote
        N32x devices that are not (easily) accessible.=C2=A0 How can I ma=
ke
        sure they power up after a power outage?</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks.</div>
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
    Eugene:<br>
    <br>
    I believe that what you want is this:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_usrp_n3xx.html#n3xx_mg_eeprom_flags">https://files.ettus.com/manual=
/page_usrp_n3xx.html#n3xx_mg_eeprom_flags</a><br>
    <br>
    <br>
  </body>
</html>

--------------IqKvZDYG1t3Ar8R0MeMMGqp0--

--===============4789850563985724802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4789850563985724802==--
