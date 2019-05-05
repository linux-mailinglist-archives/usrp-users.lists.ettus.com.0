Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D9A1409F
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 17:28:05 +0200 (CEST)
Received: from [::1] (port=54670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNJ3b-0008Of-ED; Sun, 05 May 2019 11:28:03 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:43092)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hNJ32-0008FP-Ka
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 11:27:58 -0400
Received: by mail-qt1-f170.google.com with SMTP id r3so2165176qtp.10
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 08:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=QLRwzPLkTjaMg5Yd7xV+1vZlMsYT0Uyhb8EwzE43CRw=;
 b=KL9YqYybkkKY99OEHtR1VWiZ+fgBdWh0UM6xVixPz3adCj3Cfmlrj+hsx5ymuuH5KS
 5gFy4enQGCoZOuwJBYQzPzRD/kAe2vJyog/DImiH10UfC5y74hzi0B4ZPF0IfuZN10dU
 eeiL9wDOQbpq1WgSoPJlUS++rMLrAXwoROhnSyH2hH+2Ih9mseCNcsFYsrE5R9/6mvnz
 jE4gFR3C4wUK5xQZaoJJ7JnEu44fdJ1HYJ3TduS99JfX+yR25yPU3WUmpFRXKLpn4ONH
 sJJhXWzyWOXL7Uej/XWs+Zu4zCoyRFO/yq6RfvC4kQHp2Qh9Y08YMh9F9dALed1HeYOB
 ZRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=QLRwzPLkTjaMg5Yd7xV+1vZlMsYT0Uyhb8EwzE43CRw=;
 b=cL/7ZzxevuXGrmZT5tARcX+gMNqg6VQF3j3Js3z3uLeQuCJda63NpgeKzOF3yqaPbg
 5tOVdcCyy/DU408qhAAhYQEtGdFrt5mgfsqbVyAQbp8DPJr2naknSEsMaz6Oe659MSdm
 y1FVdUv4rHsdw6URG46+PXETuVl9dsnXBsLbS2nwmbVcT+l8mGAbJmEtd14NnO75kngB
 5GcbRUGhNU+l9/IuuUOyZoqSWJcsPyR2xqVgkocIxdGT9taXXfqUkDt6X8yqKzRpdSA0
 3OoIcDg9axn5QSx0A++vg1cLoo4hP7g4jiqseErOv5UHUKJep5t4HBPtIv7ecL+YGDGM
 u54Q==
X-Gm-Message-State: APjAAAUAFtYEYSP+12BMUmaQ33HM/rI4SWPECs8HnWzOsxGqhZVITqTh
 jQ5dMVf53o1bdRteUiHGKC2d7+esOsA=
X-Google-Smtp-Source: APXvYqwL5LFjqeAiwLVWn/UDhLcojTMhxIAWred3j3HbbDCw6TE0poxc1x7w6QfvEIQ8JiWIWAnDYA==
X-Received: by 2002:a05:6214:242:: with SMTP id
 k2mr17418014qvt.168.1557070008013; 
 Sun, 05 May 2019 08:26:48 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id o19sm3567859qkm.1.2019.05.05.08.26.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 08:26:47 -0700 (PDT)
Message-ID: <5CCF00B6.7010407@gmail.com>
Date: Sun, 05 May 2019 11:26:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CADE5U-e_T08OHwSMWA1bf=ZowbfBnG8OAtY+Sk+A8ZgeEsX_Lg@mail.gmail.com>
 <CADE5U-f05s5shd-JBRLrYKZYcjitk4rJ2VUhH-LgJ4GWgFbc7Q@mail.gmail.com>
 <CADE5U-dEzm-uRTfx1oK4KPYJOcP-uZzfSjs=V9hdLWwnU9Mb8w@mail.gmail.com>
 <CADE5U-eMh9P6oeWaYddeaVpBgWw+hGwrsKZsW1dr+TF7q9AYzg@mail.gmail.com>
 <CADE5U-f5C+KmqQ5AmDDk0PW163e4Zoe26G2mDLv0HZUEkiTUuw@mail.gmail.com>
 <CADE5U-d6qmUvvKz7e5NUdscuFntTXY5CTQnOp=Su5VZ3wnmatA@mail.gmail.com>
 <CADE5U-cHS-Q-2j3U9jfjNaanFG2YDvBWPyGQxTW81HESSbWyxg@mail.gmail.com>
In-Reply-To: <CADE5U-cHS-Q-2j3U9jfjNaanFG2YDvBWPyGQxTW81HESSbWyxg@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B210 mini I/Q imbalance?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 05/05/2019 10:53 AM, franz kurniawan via USRP-users wrote:
> Dear USRP users,
>
> I used b210mini and encounter I/Q imbalance as below picture..
> As a result, the analog signal demodulation was distorted and result a 
> crappy sound..
> I
> Is there any workaround regarding this issue?
>
> Thank you
>
>
Not sure what you mean.  The I/Q seem to be about 90deg out of phase wrt 
one another, which is exactly what you'd expect.

Could you describe what it is you're trying to do?  Something with an 
audio demodulator?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
