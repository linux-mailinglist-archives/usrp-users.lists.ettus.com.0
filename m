Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDB5244FD0
	for <lists+usrp-users@lfdr.de>; Sat, 15 Aug 2020 00:21:26 +0200 (CEST)
Received: from [::1] (port=57192 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6i4h-0003ra-2n; Fri, 14 Aug 2020 18:21:23 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:43040)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k6i4d-0003mB-GK
 for usrp-users@lists.ettus.com; Fri, 14 Aug 2020 18:21:19 -0400
Received: by mail-qt1-f177.google.com with SMTP id k18so8097596qtm.10
 for <usrp-users@lists.ettus.com>; Fri, 14 Aug 2020 15:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ICvT/NkG9LI8ZhWPq83ToaUo65Gtf7J1Aa3//RaCoxs=;
 b=lwzKUGiwJjl2/IFjZS9HHJpW0t99vE9Vjp40195Ld15G9GqH0k8dSkESs9Cygk5mdn
 P8FNo72+EkRiJsNgxP4FwhUdcHygDMHXo7E4xQBAeIoyT0FvVP2frt8a+LFZWo2XfaKg
 oQe2XrpCW5Gn0FWeSmr2ASijlilDR4/4WGzWC+c4z3604FmnnkLwKoB6svz57ct7JIT+
 ZQpLF8YBwi0jhKaY8FvmFFFF87QHSOWmInKPDrl3swWNzNBRAD7N22f9dd7JkWkEphkL
 SIxgeKZG1X6CeTqOyCOZDKGdlhIDr+1lCMqvrzQBNIesCCp/8I3xn0jZS39QbErspv5T
 zUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ICvT/NkG9LI8ZhWPq83ToaUo65Gtf7J1Aa3//RaCoxs=;
 b=m9v0bsTHc8hb6tw2hMxRT6REtSYEJW/cCZWIMH+2x1lNzv4rDWx3Xc83YJLfgMERXr
 kGEiI3jxvjPSE4YbvvsJs89g46jUrOBbeBs5DgolmsMY/BjiQxVJWhmg4004fd2E0Lki
 UAKmECueyCMgq/DWjv9Ap3/CmaJworPC4P+O7grX/hlMMqSoYVE7SHyzvZlE17IcuzPr
 GG5BTyoNfXjugvukzdZ8nuCMA47e/sJydFbJBLkowi1Ie8fJBOVyfCUz3wcZXWrBwoVA
 Bcx9mZDbTH34XZOhvjda3v6ctggTA6/rtrAcTdC6SCurJYqa5WViNo0MjPpy6HIrLxWq
 pehw==
X-Gm-Message-State: AOAM53267rqD+URepJ1e7iuAALv9qJ6L2C+C8msjd6xvQ+5TqinB8f2V
 ICR/wyd0Vh4+gxuQD3ElLLDfRrAUGKlLkw==
X-Google-Smtp-Source: ABdhPJxnI3eHIC5xQcOuK4PM8pPexWWNq/mtbOROmEkGS+ZiAIeROQxIaTp3bvMR/oBGx4I+U7XrZg==
X-Received: by 2002:ac8:74c7:: with SMTP id j7mr4017638qtr.254.1597443638691; 
 Fri, 14 Aug 2020 15:20:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148]) by smtp.googlemail.com with ESMTPSA id
 b131sm9823912qkc.121.2020.08.14.15.20.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Aug 2020 15:20:38 -0700 (PDT)
Message-ID: <5F370E35.40200@gmail.com>
Date: Fri, 14 Aug 2020 18:20:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com>
In-Reply-To: <CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com>
Subject: Re: [USRP-users] usrp_x310_fpga_RFNOC_HG.bit
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
Content-Type: multipart/mixed; boundary="===============8833572766535069798=="
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
--===============8833572766535069798==
Content-Type: multipart/alternative;
 boundary="------------060404050904030809070304"

This is a multi-part message in MIME format.
--------------060404050904030809070304
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/14/2020 04:06 PM, cherif chibane via USRP-users wrote:
> Hello,
>
> I would like to use teh X300 bit file:|usrp_x310_fpga_RFNOC_XG.bit.|
> |Does it exist somewhere or do I need to re-create it? I used 
> |uhd_images_downloader to download the bitfiles but it did not come 
> with the files downloaded.
> Thanks,
> Cherif
>
> |
> |
> |Does it exist somewhere or do I need to re-create it. I used 
> |uhd_images_downloader but it did not come with the files downloaded.
> ||
> Thanks,
> Cherif
>
What version of UHD are you running?  I think the naming convention for 
the standard "factory" BIT files changed quite a while ago.



--------------060404050904030809070304
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/14/2020 04:06 PM, cherif chibane
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div>Hello,</div>
            <div><br>
            </div>
            <div>I would like to use teh X300 bit file:<code>  
                usrp_x310_fpga_RFNOC_XG.bit.</code></div>
            <div><code>Does it exist somewhere or do I need to re-create
                it? I used  </code>uhd_images_downloader to download the
              bitfiles but it did not come with the files downloaded.</div>
            <div>
              <pre style="white-space:pre-wrap">Thanks,
</pre>
              <pre style="white-space:pre-wrap">Cherif
</pre>
            </div>
            <div><br>
            </div>
            <div><code><br>
              </code></div>
            <div><code>Does it exist somewhere or do I need to re-create
                it. I used  </code>uhd_images_downloader but it did not
              come with the files downloaded.<br>
              <code></code>
              <pre style="white-space:pre-wrap">
</pre>
              <pre style="white-space:pre-wrap">Thanks,
</pre>
              <pre style="white-space:pre-wrap">Cherif
</pre>
            </div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    What version of UHD are you running?  I think the naming convention
    for the standard "factory" BIT files changed quite a while ago.<br>
    <br>
    <br>
  </body>
</html>

--------------060404050904030809070304--


--===============8833572766535069798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8833572766535069798==--

