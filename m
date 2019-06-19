Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D41ED4BE50
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 18:33:57 +0200 (CEST)
Received: from [::1] (port=46300 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hddX2-0004d4-Oc; Wed, 19 Jun 2019 12:33:56 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:35530)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hddWz-0003yz-Id
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 12:33:53 -0400
Received: by mail-qt1-f172.google.com with SMTP id d23so20687652qto.2
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 09:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Uo9J9ZvfQCeiLGrygow+FK27FzAS/W1OICvPK1nicD4=;
 b=akPKblh1VrmHJWHWM5k45TOFrdHLC6k/Mvh4u1EXaBvslbZ2B4cqExG8srqBGy0Hj0
 mbTOvay5CB+E6BpM1hqbgfmm7U/XuqSQcEfDlnUk0DSnw+rPPJMEiWE7letsAv2Cc0nH
 9pIFId7XE/k8OUninN4VsAe85PONDLH9ftO4qPxv+XnRjrpNj0XIibq8fgP72/bYtwoB
 5WF6ioX/jJMo4bWWFV2Stwy60r1e83sTlBiNE8EYAUVCyEA2/jAjgTUElyfXiV+v3I1G
 3HBxLiGRrnJEDCWsW8JIFsS2ozsOqfW69hNMaoEAtGz6Fs3xBfhoKjnTb/BIos3LHE1s
 hu6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Uo9J9ZvfQCeiLGrygow+FK27FzAS/W1OICvPK1nicD4=;
 b=a3CbFSo/ZAt+7Y1saEWnh7BwP7qZR3vgLN/4an0c4sQfX7yaUTksNpVwtf0Z6uEPY1
 pyRoCqEeTEPfgwN9zvGi4nlss8f19ouEhrpFHLoAG0TzB2Qr2TBQafkIkqHk5OQsxuIU
 msW00aRT+R6+MlS856LEl7hEp2BBNC/ntXhKDdhmRD5xSB5s9c/cEdxfhnyYhXl0hHEz
 /P5tT0E0bLKZSuA47DP/dy+zdr9/XtYaTyRUp1/O381ZAXzUwmahFGRnlZSN11Bz6f7l
 A87LpyQ1uiHYW1/RXhXnJqHD8d8Ye1kx3URZ7x8HPfOTemma9F+CMSJpHuXrKvIeBkR9
 ldzA==
X-Gm-Message-State: APjAAAWpU+dlNpNOl0Xvn5ggjU0o6Yj/14rMIsJsOq4NmOY0HZ4CghaJ
 uBt6GdhBow2mhar9WW7S2TE69A9e
X-Google-Smtp-Source: APXvYqwKy7zg6tzGN0zzUMAYdGUnJVjT9OpBFHxxxfWnqZGvGXSpxe7SUs+vuZBqtirEn35M0N1DKw==
X-Received: by 2002:a0c:9233:: with SMTP id a48mr33547463qva.66.1560961992799; 
 Wed, 19 Jun 2019 09:33:12 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id 2sm12666555qtz.73.2019.06.19.09.33.12
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 09:33:12 -0700 (PDT)
Message-ID: <5D0A63C7.7080004@gmail.com>
Date: Wed, 19 Jun 2019 12:33:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
Subject: Re: [USRP-users] E320 with larger SD card
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============3557014345447623520=="
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
--===============3557014345447623520==
Content-Type: multipart/alternative;
 boundary="------------090903080703050405070500"

This is a multi-part message in MIME format.
--------------090903080703050405070500
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
>
> I wanted to use a larger SD card than the one that as supplied, but I 
> am having issues.  I loaded up the card, and then extended the data 
> partition to use up the rest of the free space (about 100GB). But then 
> it doesn't boot.
>
What steps did you take to extend the partition?


>
> I am wondering if the change to a partition size screwed up something 
> in a config file somewhere.  Is there a way to fix this without 
> rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the 
> smaller data partition (UHD 3.14.1.0 has a larger data partition, but 
> doesn't include any GR/python packages, so I need to use the older image).
>
>
> Thanks.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------090903080703050405070500
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/19/2019 12:29 PM, Jason Matusiak
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0">I wanted to use a larger
          SD card than the one that as supplied, but I am having
          issues.  I loaded up the card, and then extended the data
          partition to use up the rest of the free space (about 100GB). 
          But then it doesn't boot.</p>
      </div>
    </blockquote>
    What steps did you take to extend the partition?<br>
    <br>
    <br>
    <blockquote
cite="mid:BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">I am wondering if the
          change to a partition size screwed up something in a config
          file somewhere.  Is there a way to fix this without rebuilding
          a docker image?  I am using the UHD 3.14.0.0. that has the
          smaller data partition (UHD 3.14.1.0 has a larger data
          partition, but doesn't include any GR/python packages<span
            style="font-family: Calibri, Helvetica, sans-serif,
            EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
            Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
            &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">,
            so I need to use the older image</span>).</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">Thanks.</p>
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
    <br>
  </body>
</html>

--------------090903080703050405070500--


--===============3557014345447623520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3557014345447623520==--

