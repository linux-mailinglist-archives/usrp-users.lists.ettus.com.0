Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA62C9705
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2019 05:46:05 +0200 (CEST)
Received: from [::1] (port=58502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFs44-0002Fp-Ig; Wed, 02 Oct 2019 23:46:04 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:37671)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iFs40-0001se-At
 for usrp-users@lists.ettus.com; Wed, 02 Oct 2019 23:46:00 -0400
Received: by mail-qt1-f194.google.com with SMTP id l3so1691333qtr.4
 for <usrp-users@lists.ettus.com>; Wed, 02 Oct 2019 20:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=fjSzvQSJcs/nMZ4HFubIlVmCMOB8suw9APJ1JcvYOLQ=;
 b=JYkpIp3fX7RxCSVhVioHC5YOZkhKgOCoM+aAmxy4uAIevNaZ6BBbBWsUBgknOvpy2C
 Vvm2VRsBFlpl1ga5X6lUgb3kc6vwsEwndnptVN0OXD41FdoHUwOIdaTRzUn7OrmJWVGG
 cz/e7FRI9+IMvGhtQlC1cnibUZL3Tpx9k9Ft/jzk2R78dUw4zZnIZ+Iht1AtcgXufA8O
 Ct0It26zmpFrEc+KV9CU3Xis7iNmq60bP67uvSuhLNc//UBz2vtxZhqCl8vLILL+Y4TY
 rb8qGv+unxT6YacjpJu6hrvtujpSgffkybyGt2ubzrQOmOCby1ELSici6LvpN4Bo+DHC
 f4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=fjSzvQSJcs/nMZ4HFubIlVmCMOB8suw9APJ1JcvYOLQ=;
 b=kwY56GbFhUKwH7Tzt12em2DkH44n4ODvesvuG/SHh1NuR3fu4lQlKwNRKM8WwdsfNm
 ntiU2rECrz4to+VJ5ik0WIxWb/qyJbu0v+U0+Q6R+/6yht72C0Nf8wRdP77UQKjehsex
 L+FSqgoDyHt76jc5gV5jmc54G0Ho0INHuhqB+kmvseGWE+sr67Yx4fjkA8q/Xy2yezL6
 PXROjlJnz16Eq4tU+wnCzb0t/J3Et+Gvb0P62TylFfxBDy/+rzDfRTTucqvwjH61WYTI
 ZzwEdG6tGTT9jiIp4fc9R50BGPl+bM4mDWlWiOK8IUj+FQu+hu+o+w5Uft0cfY4AuZjL
 +PXA==
X-Gm-Message-State: APjAAAWtpzBIE9WnNwv9U8hp/CccjBKauXNENrUWTQ+uXXL5V9uYFcAk
 CH4LePnLL3HOOHRCJTjmaVZtu0Jf
X-Google-Smtp-Source: APXvYqy5rcbMvMpeLIELCFmGn0+M8C2q1ktjZpwBFVEcbjSWQPlkrml11j6P6jwlkF43EnT0qWF0dg==
X-Received: by 2002:ac8:1767:: with SMTP id u36mr8006661qtk.152.1570074319596; 
 Wed, 02 Oct 2019 20:45:19 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id d205sm715271qke.96.2019.10.02.20.45.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 20:45:18 -0700 (PDT)
Message-ID: <5D956ECE.8080407@gmail.com>
Date: Wed, 02 Oct 2019 23:45:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <f7bc0c94-95c6-cfd3-d018-8461a21de64b@6tzvaim.com>
In-Reply-To: <f7bc0c94-95c6-cfd3-d018-8461a21de64b@6tzvaim.com>
Subject: Re: [USRP-users] N310 link speed,
 buffer overflows and GPS locking / NMEA string
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
Content-Type: multipart/mixed; boundary="===============3339626392767416875=="
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
--===============3339626392767416875==
Content-Type: multipart/alternative;
 boundary="------------040401070103000205000509"

This is a multi-part message in MIME format.
--------------040401070103000205000509
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/02/2019 09:04 AM, Baroch Oren via USRP-users wrote:
>
>
> 3. If I use usrp->set_time_source("external") I get an error "At least 
> one PLL did not lock!" or "Failed to capture PPS within 1.1 seconds. 
> TDC_STATUS: 0x0"
> and if I use "gpsdo", I cannot get any feedback that gps is pps locked 
> and used. only the message "1) catch time transition at pps edge 2) 
> set times next pps (synchronously)" - does it mean that gps is locked?
The GPSDO will still produce 1PPS pulses even when it isn't locked to 
the GPS constellation.  You'll need to query the "gps_locked" sensor.

>
> 4. how can I get NMEA string from the internal GPSDO of the N310?
>

The "sensor" interface relating to the GPSDO can be queried with the 
"sensors" API.   An example of the usage of that API is in the utility 
program:

query_gpsdo_sensors

If you have the UHD source code at hand, it'll be under uhd/host/examples



--------------040401070103000205000509
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/02/2019 09:04 AM, Baroch Oren via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:f7bc0c94-95c6-cfd3-d018-8461a21de64b@6tzvaim.com"
      type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <style type="text/css">body p { margin-bottom: 0cm; margin-top: 0pt; }</style><br>
      <br>
      3. If I use usrp-&gt;set_time_source("external") I get an error
      "At least one PLL did not lock!" or "Failed to capture PPS within
      1.1 seconds. TDC_STATUS: 0x0"<br>
      and if I use "gpsdo", I cannot get any feedback that gps is pps
      locked and used. only the message "1) catch time transition at pps
      edge 2) set times next pps (synchronously)" - does it mean that
      gps is locked?<br>
    </blockquote>
    The GPSDO will still produce 1PPS pulses even when it isn't locked
    to the GPS constellation.  You'll need to query the "gps_locked"
    sensor.<br>
      <br>
    <blockquote
      cite="mid:f7bc0c94-95c6-cfd3-d018-8461a21de64b@6tzvaim.com"
      type="cite"> <br>
      4. how can I get NMEA string from the internal GPSDO of the N310?<br>
      <br>
    </blockquote>
    <br>
    The "sensor" interface relating to the GPSDO can be queried with the
    "sensors" API.   An example of the usage of that API is in the
    utility program:<br>
    <br>
    query_gpsdo_sensors<br>
    <br>
    If you have the UHD source code at hand, it'll be under uhd/host/examples<br>
    <br>
    <br>
  </body>
</html>

--------------040401070103000205000509--


--===============3339626392767416875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3339626392767416875==--

