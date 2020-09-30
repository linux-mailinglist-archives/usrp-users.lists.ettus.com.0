Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C60B27DFF4
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 07:10:48 +0200 (CEST)
Received: from [::1] (port=59448 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNUO5-0002bH-Fq; Wed, 30 Sep 2020 01:10:45 -0400
Received: from mail-qv1-f45.google.com ([209.85.219.45]:34360)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kNUO1-0002QL-BM
 for usrp-users@lists.ettus.com; Wed, 30 Sep 2020 01:10:41 -0400
Received: by mail-qv1-f45.google.com with SMTP id q10so299592qvs.1
 for <usrp-users@lists.ettus.com>; Tue, 29 Sep 2020 22:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=G9hrkFkT2R2b/5PBypG/GXO8v5vOHJmsObfeGk0G4vA=;
 b=bujhJ8cFkwM2YeVXdlWVb4Ix2MSzCJe6yNIHoAOz7mvl96ySGbJhFDpDz861w1iSrQ
 DVrPXOYPgICVKBJVQcXiJjmhW6YZrNlzSMXEHRvQWyJavNKOhFV0OEzroLoW+BnjSLIq
 94KarAtIPaolSEW309BzPSlK6OfEZfB4hPJMiHeTAVDif8e2HejSBilghbU98Jef34bI
 MQTdeQUq1JQo2o8zv+sskT3n0dY+EQTpyq4qCQn+H74FnRU3OKZ2hhXEdkpkpVh6hYrW
 p0jKs8mulQ/Sz0+zWNld6QST/5gBK/wNQlfr5NQBadcrXPcUgHPBDpJ1tqD09g6HKeVo
 LVWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=G9hrkFkT2R2b/5PBypG/GXO8v5vOHJmsObfeGk0G4vA=;
 b=mKml83NUMF4jOlpHMDzNgF1LSeBFk6+R5WYhJ4KTykBeNnuiLk1X3yswou3Gufg90e
 sxszvjhSzFRJAEMuzKd+ThKU5tx+aJI0kt/QfkATHWWDBSCTQkkoQCN7ahxFlspxl0em
 PanZxNyRuiy3Wl6ZUZ7Fx6+cF2ew9gJGza3xBMEg5FBET8PGB0bHSc6psvk9waiQ7YhM
 OOX7XmsrWAdwnPqXFKkfUKP8SglRdWHtRkR/1rSr0UkLvftWrQ7MqvleOBZmm+gHN9Pq
 MCAFLRL6ZOxeikbtIRhrtx1SVNw+4BlJFUEc0bFQPOihb3TzLNmg5E0nC2K5taXo3k3z
 g5pw==
X-Gm-Message-State: AOAM530TXP/veY8IxVmLtrG43iRSznWyu57Ozas2ZDC/dHjUeTYmZMOa
 D4eEhUrQDPjbWMyr7+i6r1S2b2lwBVSDTA==
X-Google-Smtp-Source: ABdhPJxxG8rj0kyvEqrwGvRdhuvzmsG3DWWII4V+fG1OJM8k9kVPvB315R6I0k6zTAtGe9FMnrEXgg==
X-Received: by 2002:a0c:edaa:: with SMTP id h10mr687221qvr.12.1601442600480;
 Tue, 29 Sep 2020 22:10:00 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id 25sm860492qks.41.2020.09.29.22.09.59
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Sep 2020 22:10:00 -0700 (PDT)
Message-ID: <5F741327.5030501@gmail.com>
Date: Wed, 30 Sep 2020 01:09:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>
In-Reply-To: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>
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
Content-Type: multipart/mixed; boundary="===============5689838334161371887=="
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
--===============5689838334161371887==
Content-Type: multipart/alternative;
 boundary="------------040905030903040400020707"

This is a multi-part message in MIME format.
--------------040905030903040400020707
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/29/2020 11:52 PM, james Thomas via USRP-users wrote:
> Hi,
> where is the source code of N310 file system image and how to build it?
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
I think what you seek is here:

https://github.com/EttusResearch/meta-ettus



--------------040905030903040400020707
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/29/2020 11:52 PM, james Thomas
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        where is the source code of N310 file system image and how to
        build it?</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    I think what you seek is here:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/meta-ettus">https://github.com/EttusResearch/meta-ettus</a><br>
    <br>
    <br>
  </body>
</html>

--------------040905030903040400020707--


--===============5689838334161371887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5689838334161371887==--

