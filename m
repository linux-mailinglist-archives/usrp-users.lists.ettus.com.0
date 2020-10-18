Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CD3291641
	for <lists+usrp-users@lfdr.de>; Sun, 18 Oct 2020 08:21:19 +0200 (CEST)
Received: from [::1] (port=38102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kU24E-0005PD-04; Sun, 18 Oct 2020 02:21:18 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:40073)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kU249-0005Ge-MD
 for USRP-users@lists.ettus.com; Sun, 18 Oct 2020 02:21:13 -0400
Received: by mail-qk1-f171.google.com with SMTP id h140so5452685qke.7
 for <USRP-users@lists.ettus.com>; Sat, 17 Oct 2020 23:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Xxvlf+YMFQq9wDy1UcvPDqhLbGm+6ZdZf2NLxJcv5BY=;
 b=tnZ0yPSDDyaF9mKMmuWTplF7Fr2J3AAfI9NB2UtTBdgtt9q2eIRMocWwAKfeli5o3l
 hRUErMNlWSYe6O9peFQ/xrZJoqzbAl7Ax2pspuCqhCWwC9mzHzxNWOMMif/jFDSytrLV
 NA3H5Z8JzzsQ5jDQU3C4d1lIBIZEanosb3vLRXezLVAcMlch6FLjSsyLsyZqzR6e0OfZ
 sVwcyHoQJt2ZQmdwzRDj8duhxoVKIkW5uaZPiTsFu7fXFY15IuasPiSDv/WgWN5H8GJ6
 Silin0zGWeodS4EflFYOT1hSYyXDFGuyOZWoVZW4pf3e3B8w7mWCL3wIEWq00Ii75xyS
 nlfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Xxvlf+YMFQq9wDy1UcvPDqhLbGm+6ZdZf2NLxJcv5BY=;
 b=Kx2JRVAVGyX+Scv7o4ONtqUOwxYilFXkmxbBqaeW/s3b+zELni7Xb8cTR0QuNmVg+E
 RkJNf89UdmEPIXI6EiGJdBHIqN8Wz4tOpHl79p4hlu8ijRQdMntTWlRxEOPU+c+Hml1z
 xxZdSgqpZbywLZ6cFTpBXkKIEhjPcM4QV0C2PaoKxXepmYWix3/Y3RyOhNIA2EIxYwOt
 yCCuh1QAs+erInpdqlGMg9RSX8oLZCJSGTuQ6H581LWpIK/UlRTlB8qAIeUbcnHMRSx1
 hVhg2Bw4vlhwvFASegO0BCT8gYNfWt2FuyUUTSW/KYJpqDM1+6DgeiSTy1iKrohE8NLW
 SUeQ==
X-Gm-Message-State: AOAM532kNdgDKXv1AT3VapugzHx5vB16344a6gsSJUz5c3WDYDoDnVZp
 O+ZYnxdB4p1/hzHY4KVccfOnZNJ8iknl7Q==
X-Google-Smtp-Source: ABdhPJxoLU6iZLuk7awdE5oagEgiDzlmfz2iz6BAc062s9QqSs/ed8i0rhfTg7+nKFmW1zzhEmpzXg==
X-Received: by 2002:a37:c51:: with SMTP id 78mr11355024qkm.30.1603002032881;
 Sat, 17 Oct 2020 23:20:32 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.googlemail.com with ESMTPSA id n206sm2888515qke.72.2020.10.17.23.20.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Oct 2020 23:20:32 -0700 (PDT)
Message-ID: <5F8BDEAF.8080806@gmail.com>
Date: Sun, 18 Oct 2020 02:20:31 -0400
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
Content-Type: multipart/mixed; boundary="===============7614756551626442799=="
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
--===============7614756551626442799==
Content-Type: multipart/alternative;
 boundary="------------050306040000090606070009"

This is a multi-part message in MIME format.
--------------050306040000090606070009
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
Also, I'll note that this whole thing assumes that you're familiar with 
OE (OpenEmbedded) development techniques and paradigms.


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


--------------050306040000090606070009
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
    Also, I'll note that this whole thing assumes that you're familiar
    with OE (OpenEmbedded) development techniques and paradigms.<br>
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

--------------050306040000090606070009--


--===============7614756551626442799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7614756551626442799==--

