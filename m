Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDE429163C
	for <lists+usrp-users@lfdr.de>; Sun, 18 Oct 2020 08:13:23 +0200 (CEST)
Received: from [::1] (port=38014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kU1wX-0004yp-2h; Sun, 18 Oct 2020 02:13:21 -0400
Received: from mail-qv1-f42.google.com ([209.85.219.42]:44744)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kU1wT-0004tf-6O
 for USRP-users@lists.ettus.com; Sun, 18 Oct 2020 02:13:17 -0400
Received: by mail-qv1-f42.google.com with SMTP id s17so2961507qvr.11
 for <USRP-users@lists.ettus.com>; Sat, 17 Oct 2020 23:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ofZj8vENv5+DKkvDnjT87uv2KUOvOF+/FQCkcg31LbI=;
 b=oJHb0gyqyk6B8gER1SxSXFQsVwen1xkm4ThVEEuoHWFYdkR5wdUTQj/oWIHzaCB7ld
 GR8ZjS1L1s61LakJQGuE9WNvvvla+NZJNMjcVAVjHDXdMH1GVw2CkcD/DlTdeARydLpX
 SwI1082uejVIAXTRZmeuWq4mL/J5t/dpBp9nFhKqnQppe0DyiFN9JFfSdV9ac7WLTmNx
 isryBSmM1sgYg+cyJ+tPie8jZUQoh8Wxjfh2nXkgQgapKjk4E+LOS2YpUo2zOpiT/fvU
 W8Mr8gbyGfj3t6I0/g7ji0tCs4vNVJCzVwjLfGn/3Z6lKk2LblAd4+sr2R3W6Jbatye5
 sthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ofZj8vENv5+DKkvDnjT87uv2KUOvOF+/FQCkcg31LbI=;
 b=WPmuG9uW1OlSN1wHf/hNb++ZDsiNfbOzpmy1J7RhTslItByMASjqkFXdohxd595b1M
 niN0+JaHrkK+ii7HWzslqylgnnMkLQFYWeLlk9AY9T/Y2JWvxLfKJFVb+r/68lNLA+rO
 w6/mZ+uslyHqh29fSl3tvN0HHJJomhOOOQBo8FLYpoizaxMoAD/fnNDHtWe0yGf1fRZF
 RBowLPg4Vlby6ARS9VIrZTI1ADpsZKPKIZFe0PaxDWnfeO4maKKKHZTLBrQNo4iM9jo7
 09dU8Srrr2eP4dZKidFzQR99dBFavviyyZOToFVmXG82EiQtEDSWqIMBp/jtMRyZcsxn
 m0TQ==
X-Gm-Message-State: AOAM532ga2JzJxvAhF5WTq+tvCHJrShHu5bbCK6fDjaCQG9ADoKw+HgS
 R/IGQHZis7ITQcrhDaQpqDAaaGdqBibROg==
X-Google-Smtp-Source: ABdhPJxwhgulAyla8Mm1kUtrGBeDJshTaU8xygemEGFujun6hN3L0UujFbgMSBCxfnTXOplOwVAZhA==
X-Received: by 2002:a0c:a945:: with SMTP id z5mr11222448qva.55.1603001556430; 
 Sat, 17 Oct 2020 23:12:36 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.googlemail.com with ESMTPSA id n57sm2981162qtf.52.2020.10.17.23.12.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Oct 2020 23:12:36 -0700 (PDT)
Message-ID: <5F8BDCD3.6040502@gmail.com>
Date: Sun, 18 Oct 2020 02:12:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: james Thomas <james_ttfun@hotmail.com>, 
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F741327.5030501@gmail.com>
 <SYAPR01MB28487ADC6FC52070151510CA9D030@SYAPR01MB2848.ausprd01.prod.outlook.com>,
 <5F89CE6C.4050903@gmail.com>
 <SYAPR01MB2848A220FC7121F6AC37D9BF9D010@SYAPR01MB2848.ausprd01.prod.outlook.com>
In-Reply-To: <SYAPR01MB2848A220FC7121F6AC37D9BF9D010@SYAPR01MB2848.ausprd01.prod.outlook.com>
Subject: Re: [USRP-users] How to build N310 file system image
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
Content-Type: multipart/mixed; boundary="===============3054381461948866704=="
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
--===============3054381461948866704==
Content-Type: multipart/alternative;
 boundary="------------060400080003070202050701"

This is a multi-part message in MIME format.
--------------060400080003070202050701
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/17/2020 11:41 PM, james Thomas wrote:
> when I run repo init -u 
> git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1 it have 
> error below:
> how to fix this?
>
> repo init -u git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1
> repo: warning: Python 2 is no longer supported; Please upgrade to 
> Python 3.6+.
So, first things first--you need to add Python3.6 to your system.

>
> ... A new version of repo (2.8) is available.
> ... New version is available at: /home/w/meta-ettus/.repo/repo/repo
> ... The launcher is run from: /usr/bin/repo
> !!! The launcher is not writable.  Please talk to your sysadmin or distro
> !!! to get an update installed.
>
> Downloading manifest from git://github.com/EttusResearch/oe-manifests.git
> fatal: Couldn't find remote ref refs/heads/v3.14.1.1
> manifests:
> fatal: Couldn't find remote ref refs/heads/v3.14.1.1
>
> fatal: Couldn't find remote ref refs/heads/v3.14.1.1
> manifests:
> fatal: Couldn't find remote ref refs/heads/v3.14.1.1
>
> fatal: cannot obtain manifest 
> git://github.com/EttusResearch/oe-manifests.git
My guess is that your system/network is not configured to allow GIT 
traffic to pass through--you'll have to fix that or have your sysadmin
   fix that.


> ------------------------------------------------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, October 16, 2020 12:46
> *To:* james Thomas <james_ttfun@hotmail.com>; 
> usrp-users@lists.ettus.com <USRP-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] How to build N310 file system image
> On 10/16/2020 03:51 AM, james Thomas wrote:
>> Hi Marcus,
>> is there more document of how to build this source?
>> ------------------------------------------------------------------------
>>
> If you visit the repository web-page, there's information there about 
> building images.
>
>


--------------060400080003070202050701
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/17/2020 11:41 PM, james Thomas
      wrote:<br>
    </div>
    <blockquote
cite="mid:SYAPR01MB2848A220FC7121F6AC37D9BF9D010@SYAPR01MB2848.ausprd01.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        when I run repo init -u
        git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1 it
        have error below:</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        how to fix this?<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        repo init -u git://github.com/EttusResearch/oe-manifests.git -b
        v3.14.1.1
        <div>repo: warning: Python 2 is no longer supported; Please
          upgrade to Python 3.6+.</div>
      </div>
    </blockquote>
    So, first things first--you need to add Python3.6 to your system.  <br>
    <br>
    <blockquote
cite="mid:SYAPR01MB2848A220FC7121F6AC37D9BF9D010@SYAPR01MB2848.ausprd01.prod.outlook.com"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div><br>
        </div>
        <div>... A new version of repo (2.8) is available.</div>
        <div>... New version is available at:
          /home/w/meta-ettus/.repo/repo/repo</div>
        <div>... The launcher is run from: /usr/bin/repo</div>
        <div>!!! The launcher is not writable.  Please talk to your
          sysadmin or distro</div>
        <div>!!! to get an update installed.</div>
        <div><br>
        </div>
        <div>Downloading manifest from
          git://github.com/EttusResearch/oe-manifests.git</div>
        <div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
        <div>manifests:</div>
        <div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
        <div><br>
        </div>
        <div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
        <div>manifests:</div>
        <div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
        <div><br>
        </div>
        fatal: cannot obtain manifest
        git://github.com/EttusResearch/oe-manifests.git<br>
      </div>
    </blockquote>
    My guess is that your system/network is not configured to allow GIT
    traffic to pass through--you'll have to fix that or have your
    sysadmin<br>
      fix that.<br>
    <br>
    <br>
    <blockquote
cite="mid:SYAPR01MB2848A220FC7121F6AC37D9BF9D010@SYAPR01MB2848.ausprd01.prod.outlook.com"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b> Marcus
          D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Friday, October 16, 2020 12:46<br>
          <b>To:</b> james Thomas <a class="moz-txt-link-rfc2396E" href="mailto:james_ttfun@hotmail.com">&lt;james_ttfun@hotmail.com&gt;</a>;
          <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class="moz-txt-link-rfc2396E" href="mailto:USRP-users@lists.ettus.com">&lt;USRP-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] How to build N310 file system
          image</font>
        <div> </div>
      </div>
      <div style="background-color:#FFFFFF">
        <div class="x_moz-cite-prefix">On 10/16/2020 03:51 AM, james
          Thomas wrote:<br>
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
            Hi Marcus,</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            is there more document of how to build this source?<br>
          </div>
          <hr tabindex="-1" style="display:inline-block; width:98%">
          <br>
        </blockquote>
        If you visit the repository web-page, there's information there
        about building images.<br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060400080003070202050701--


--===============3054381461948866704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3054381461948866704==--

