Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA762709DE
	for <lists+usrp-users@lfdr.de>; Sat, 19 Sep 2020 04:03:07 +0200 (CEST)
Received: from [::1] (port=48300 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJSDO-00036V-GN; Fri, 18 Sep 2020 22:03:02 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:40289)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kJSDL-000318-6g
 for USRP-users@lists.ettus.com; Fri, 18 Sep 2020 22:02:59 -0400
Received: by mail-qt1-f175.google.com with SMTP id v54so6891478qtj.7
 for <USRP-users@lists.ettus.com>; Fri, 18 Sep 2020 19:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=7RQiERO/jaxymr5swBRKjzIVBUME0x/6uAciEDoJ2TE=;
 b=Y9ab7OO/aZIt/GQ+xiwkejIp2dQd/BOiNoWJanN7COQ41arl1l9HQEETR+sLC6WJPy
 eDCp/ywKx78KndQncISIs32UMhCVBVRuzze6i3k/4Zz6GwO62ae5K7EhXVsssTCi68AP
 lyQ3JsH+hqMZKRZj9h6ujaIASHDEhF5EtLYAHcorhnARsnwQDycLxJyPk19rgiyD4fCH
 YUj4RuDAOeZn+rkc+XKS4EQTjPKzdE33gAmp3DPO1VD+5Zoj6qG70sxfQiI0gKbwRd2o
 RruGyKhM84lAxSnsTX6mi5JK5/pgo4x7JPrk9S31ZoF/US53w4eJXs1N85o8APWcxJRu
 947Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=7RQiERO/jaxymr5swBRKjzIVBUME0x/6uAciEDoJ2TE=;
 b=CHeilTEtG/0b5HOl++AIWGrDRFd52bfLfnU5pQO2BtyV4ujVmlK+o+Vzs1JSd0dF2e
 om0jclpbtmu1vI3BykA/DGEGv7y/0yphuNDkVPW7r5ENHibLPMAkUiiaU5jqJZyIXhLk
 6jYLXrFZcwdP3c+rc/q6S5jCARUx69MyqTXcxjINnnprOyX3QCwmsp+IH5PFQbhWxAiA
 I98K7IRhmiTovIztErkuq1RY+MmuP5BJOYbUERPnScNoI7cIP6iMVAvW+0An4oNolYa1
 F5Na8K5MNWCoK+k4+A/BmSGT1snQpvZ233s9OQmPOM5KU3PjjRIdIGU5pO+l+NR9Wd7Z
 L2Qg==
X-Gm-Message-State: AOAM530Hy6bNl4AZG5CA3R53YdOsCo49IyDHpM2XGuu6a45lKfrLAJqF
 g+kMvFEQRsGxVI5jcGpAaz5Z3VwOz6mZPw==
X-Google-Smtp-Source: ABdhPJzcCk11EEeJ6kHObhh80Ao8BwJrUocWq471Gsj//36vz4fnntDxda8KaHo5T1tWBtR57NAl8A==
X-Received: by 2002:ac8:74c8:: with SMTP id j8mr18486921qtr.77.1600480938394; 
 Fri, 18 Sep 2020 19:02:18 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id 29sm3386524qkr.114.2020.09.18.19.02.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Sep 2020 19:02:18 -0700 (PDT)
Message-ID: <5F6566A9.5090205@gmail.com>
Date: Fri, 18 Sep 2020 22:02:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Thomas james <james_ttfun@hotmail.com>, 
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
In-Reply-To: <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Subject: Re: [USRP-users] 
 =?utf-8?b?5Zue5aSNOiAgd2hhdCBpcyB0aGUgVFBNIHVzZWQg?=
 =?utf-8?q?for_N310?=
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
Content-Type: multipart/mixed; boundary="===============4635947311922137376=="
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
--===============4635947311922137376==
Content-Type: multipart/alternative;
 boundary="------------030606070404050806070607"

This is a multi-part message in MIME format.
--------------030606070404050806070607
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/17/2020 11:19 PM, Thomas james wrote:
> HI Marcus,
> thanks. and is the source code of stm32  and cpld  avaiable?
>
Check out:

https://github.com/EttusResearch/usrp-firmware

https://github.com/EttusResearch/meta-stm32


> ------------------------------------------------------------------------
> *发件人:* USRP-users <usrp-users-bounces@lists.ettus.com> 代表 Marcus 
> D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *发送时间:* 2020年9月17日 23:26
> *收件人:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *主题:* Re: [USRP-users] what is the TPM used for N310
> On 09/17/2020 08:41 AM, Thomas james via USRP-users wrote:
>> Hi,
>> i learned that N310 have the version with or without TPM. i want to 
>> know more about it. what is the TPM used for?
>>
> Nothing as far as I know--it's available to be used for custom 
> applications.
>


--------------030606070404050806070607
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/17/2020 11:19 PM, Thomas james
      wrote:<br>
    </div>
    <blockquote
cite="mid:HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        HI Marcus,<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        thanks. and is the source code of stm32  and cpld  avaiable?<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
    </blockquote>
    Check out:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/usrp-firmware">https://github.com/EttusResearch/usrp-firmware</a><br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/meta-stm32">https://github.com/EttusResearch/meta-stm32</a><br>
    <br>
    <br>
    <blockquote
cite="mid:HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>发件人:</b>
          USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> 代表
          Marcus D. Leech via USRP-users
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>发送时间:</b> 2020年9月17日 23:26<br>
          <b>收件人:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>主题:</b> Re: [USRP-users] what is the TPM used for N310</font>
        <div> </div>
      </div>
      <div style="background-color:#FFFFFF">
        <div class="x_moz-cite-prefix">On 09/17/2020 08:41 AM, Thomas
          james via USRP-users wrote:<br>
        </div>
        <blockquote type="cite">
          <style type="text/css" style="display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi,</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            i learned that N310 have the version with or without TPM. i
            want to know more about it. what is the TPM used for?<br>
          </div>
          <br>
        </blockquote>
        Nothing as far as I know--it's available to be used for custom
        applications.<br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030606070404050806070607--


--===============4635947311922137376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4635947311922137376==--

