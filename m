Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C1B1E512B
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 00:27:46 +0200 (CEST)
Received: from [::1] (port=40696 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1je4WU-0000Yv-Hf; Wed, 27 May 2020 18:27:42 -0400
Received: from mail-ej1-f52.google.com ([209.85.218.52]:33974)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aitamakinde@abuad.edu.ng>)
 id 1je4WQ-0000UI-NJ
 for usrp-users@lists.ettus.com; Wed, 27 May 2020 18:27:38 -0400
Received: by mail-ej1-f52.google.com with SMTP id l27so7815067ejc.1
 for <usrp-users@lists.ettus.com>; Wed, 27 May 2020 15:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=abuad-edu-ng.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=KqRi82ibK0mHME1OMUztZ2T+Ha6DOt7uUS0mXIOBDlk=;
 b=mSAXvOHqzfelwg7u35IA7dS3bR32ynBeNXY93oObDesegsUxFFiLODBYBgAe6yPbC0
 b9Ciwrcp8BI+evsJoD/R4OlWR5LkDGttW/wRGIlD7Lk6Yo6xu/x+sRN2lyBrVKD6Jetb
 oOYVc6c5kdtRYAeLdoMJXs5IULsOoyMmLpoRMfH9LXa6asqvn9LwkHlv7mDvEi94h6cd
 lUAYJN1ARsHT51BI8JQqWg//bOQplB273fa0WYYkOuLLMg4SbQ4akbFXZzTsCiE2SZUR
 JCgv//OT1Bju82Y4UxdCVhCm6/8bPiKcDK+/iWCYveKTiQTM2JXj3LMjlnFTi3DHfyfu
 WOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=KqRi82ibK0mHME1OMUztZ2T+Ha6DOt7uUS0mXIOBDlk=;
 b=PYF0nx0Jt4a/zMjApscY9LdGeA/mBse7gYYX12K0OJOozzcMxqJeitJFp1JZ1fiWCr
 zql1UGNFEEOb28zYJuuwZnQCJdnqfloyHYsDvYGtATZ0bWaaTOFEsPpdkLrmDd47isL3
 b1OV2xGdyTYYtiR6t2qO9UkOeZTs4TCIpzLqeArTpKvxXJap3BLRgffPHHqrcdK0Fry9
 4TcRu53U2bIQiwpnyzVYGSVY4plW8IS95TdNrVvmtRyTKooV244NWaUjnvHlUC7Pn8na
 0AO/fyO3IgeRLs8zluu0zp1PAstBjxuPssGnfK7EI4IwYptk0PH59Y9ct3DXzhdpVP2w
 N92w==
X-Gm-Message-State: AOAM530aLCMNvUIoXc8+yYoQL3OyQxeMpvKsBwYuuYmy0BZIi5QG9Pa/
 P0px8CD60hx1M94CNZ0lBSbjaifUXmdIKEAxqzkpv2m6nuutWA==
X-Google-Smtp-Source: ABdhPJwNAERnC4FoMVg83Izo4TwI/uKvK9sI4MNVXgFYXDnMDPsYfzBDK5yiRix+nNPHfXT6uCCs3XpAdqksshfIYXY=
X-Received: by 2002:a17:906:934e:: with SMTP id
 p14mr447384ejw.498.1590618417410; 
 Wed, 27 May 2020 15:26:57 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 27 May 2020 23:26:44 +0000
Message-ID: <CAD-eGGr6EaYEUKFLHW5zgg8yd5ctdDJ6Lf44LeP1sZ2X6W4Uaw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Modulation technique for sliding correlator channel
 sounder
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: AKINYELE ITAMAKINDE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: AKINYELE ITAMAKINDE <aitamakinde@abuad.edu.ng>
Content-Type: multipart/mixed; boundary="===============7982758844032255167=="
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

--===============7982758844032255167==
Content-Type: multipart/alternative; boundary="000000000000be593c05a6a8b504"

--000000000000be593c05a6a8b504
Content-Type: text/plain; charset="UTF-8"

I am working on propagation channel measurement using a sliding correlator
channel sounder flowgraph for Tx and Rx. The sliding correlator channel
sounder flowgraphs I've gotten so far from internet search have no
modulation technique. Does that show it does not require modulation
technique? If yes, why?
Thanks.
Akinyele

--000000000000be593c05a6a8b504
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>I am working on propagation channel measurement using a sliding 
correlator channel sounder flowgraph for Tx and Rx. The sliding 
correlator channel sounder flowgraphs I&#39;ve gotten so far from internet 
search have no modulation technique. Does that show it does not require 
modulation technique? If yes, why?<br></div><div>Thanks.</div><font color="#888888"><div>Akinyele</div></font></div>

--000000000000be593c05a6a8b504--


--===============7982758844032255167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7982758844032255167==--

