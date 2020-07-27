Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4A322F445
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jul 2020 18:04:41 +0200 (CEST)
Received: from [::1] (port=46326 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k05cF-0001Nu-SA; Mon, 27 Jul 2020 12:04:39 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:40038)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1k05cB-0001Gn-Ih
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 12:04:35 -0400
Received: by mail-qt1-f170.google.com with SMTP id s16so12584999qtn.7
 for <usrp-users@lists.ettus.com>; Mon, 27 Jul 2020 09:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:date:message-id:subject:from:to:user-agent;
 bh=0wUU++oNqotWk2kKNSTG9ZkYUD53ejOmCK/HKdnA9o8=;
 b=iOUmYLUkMaBUsMTxbDf98m9qrXuMQeJbJe/LyN/bGbXnzBGbfLQEnMXo2kFPxgvhmC
 zCtNseP1wj7TZp9y/VLStERrtAYcoS/hWAeusrev1s4Gr41WKxbnaS3QYU6d6cTQRsF4
 759XqE/pxtXCuiKi96zSv77OFQYH14WDt3wTtxtvpe/TXatvd5crVePY90DvFcb8dgf0
 mHxnVkdYc7xhL68PpqXzzz/tjpqiA1dpRk6IYnjNDByvKsNAC1FIalOB6srvZgjGedFf
 y+movCWGA8zuPk7ZNT2b0TiUklK4FBk2aO6f0aZFmTi+znKawKREjAb2j/rzCo7Wkh5u
 b6lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to
 :user-agent;
 bh=0wUU++oNqotWk2kKNSTG9ZkYUD53ejOmCK/HKdnA9o8=;
 b=nI5JcM/io+9mSIqlHfrhrmwuHDxB7DyxNV+27SbNlkaLGM53dkrYK7U2q9RZmswE5v
 Eg2r/Unloo38IuzqJQzT+4SVELlZobQ7L8kg8pubmyxm62s3nA8/WmgB3gNwI048gklv
 nn7ZbL/WyRPLdSW4LWje7Tqtydk7qnzRD8SA1IgM3OQkrsr2jrWfmEirIo5jZSdHzYbw
 ZJGbJgl1L5FzqvW457IMBoeVkmUaO2u1vs13aA17H/BeNuQ+6ENxUy7CVwb2PktdvM9z
 JYEgn8LTQYvlY4fBNTZIpqCn4yBklCjXeYiVtOOr02AmXXWbfzyamIgYrSQG8cEdYYKE
 nIlA==
X-Gm-Message-State: AOAM532pDn2bxvB2vr/WeGeUkEIcX3zUdbntfNCBlP1cjOorCDnpVYuY
 857BZP3ncJ6TfVZbtT9GQAA41zw5Be8=
X-Google-Smtp-Source: ABdhPJxxbDyAm/AmNEdMERnqROJ1f17eMNL7Mt4zZtkgpmBxjfkZWXzGzy8/fNQCJ+72sixH6Mkq+w==
X-Received: by 2002:ac8:454f:: with SMTP id z15mr3583724qtn.351.1595865834431; 
 Mon, 27 Jul 2020 09:03:54 -0700 (PDT)
Received: from [192.168.1.215] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id l13sm3195146qth.77.2020.07.27.09.03.53
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Jul 2020 09:03:53 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 27 Jul 2020 12:03:52 -0400
Message-ID: <Mailbird-4eef5eb0-b7b0-4590-b269-00ea7b28bd03@gmail.com>
To: "" <usrp-users@lists.ettus.com>
User-Agent: Mailbird/2.8.23.0
X-Mailbird-ID: Mailbird-4eef5eb0-b7b0-4590-b269-00ea7b28bd03@gmail.com
Subject: [USRP-users] GNU Live to DVD/USB Drive
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
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
Content-Type: multipart/mixed; boundary="===============2613658704309180929=="
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

--===============2613658704309180929==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_62384233.902303159570"

------=_NextPart_62384233.902303159570
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: 7bit

Is the GNU Radio ISO to DVD/USB Drive available anywhere?
Thanks
Larry Dodd, K4LED
------=_NextPart_62384233.902303159570
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000">Is the GNU Radio ISO to DVD/USB Drive available anywher=
e?<div class=3D"mb_sig"></div><div>Thanks</div><div>Larry Dodd, K4LED</div>=
</div>
------=_NextPart_62384233.902303159570--


--===============2613658704309180929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2613658704309180929==--

