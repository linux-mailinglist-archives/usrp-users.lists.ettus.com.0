Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C6A1C43DB
	for <lists+usrp-users@lfdr.de>; Mon,  4 May 2020 20:02:17 +0200 (CEST)
Received: from [::1] (port=40728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVfPx-0005gU-4q; Mon, 04 May 2020 14:02:13 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:39174)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jVfPt-0005ZH-7X
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 14:02:09 -0400
Received: by mail-io1-f44.google.com with SMTP id w4so13302425ioc.6
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 11:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=LTGZlnWuZzDxtsF2aEh+zLy9yLS2IwJxHDOArNI6y5k=;
 b=KU/b0+BnJdPb4ti2wgup44uc+VAtyj3NonBnXM8bdAm0ZsJ/szi/f7QKi5zpCM2JKZ
 x0UxIXoT5upLKE9O2lijJqZPvIWjk2aXLThfhDtsqhR338NqzOtUPt2M5F8hf11uB/qv
 evwTXngAQrFahDkCP73NpvZYbo95CCPHCKQJwTEtTHcLw4kI3w+GRAnPwfTjskTogDAo
 LY3SCJSJSirizfihjwEDzJFSRNzKC2lqEG/0APm68lr3FrlMbEcENDi+IG8aM+5Vxm61
 ymVdOyZHgzssfvFnEXRyTBEcQbOmucVUyDhEfxhPWScqPkCWr9DX1ffxL7p41hV0y6H/
 mSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=LTGZlnWuZzDxtsF2aEh+zLy9yLS2IwJxHDOArNI6y5k=;
 b=HIeBh1t8OvNleacj5XuelBYaH1pbhAvhDkfY/6Rr1w6yWe9/J9nfCXxM0qiKlkWOB5
 wurcWvZUB1BaNuVHUGXg1JHkjjuO213kuBUFY+IiHDg5+BnQjnAbor5MLJaK7FtzFmyB
 naGyM7y9qR7tEjKMy72OVNCpdmkZiAgQwN5Z3MQtg+wZPym9h8PBidIdGdLciLQFObIb
 99Kv0w0sKSnj7vLcveGfEm7Iqr+IvuLrsHmrSktChbt/8s78RAF5RR8/tKf4fbEQ8Ia1
 8nWeG151fm26MpB35dstWWjjHgGyWhEV6Vt386wQ65umP3MyXU/68lOHeFFTABfdcwJ3
 xaRQ==
X-Gm-Message-State: AGi0PuZ/mWpgO+5IX8566bNT3pHnxQ+//SZe8kIpb+SSxLuu3c0wgSP0
 FBocF0BnwnJf8cp6XJqtu0gfiwevoCichHVm2lZnXIIbWqg=
X-Google-Smtp-Source: APiQypJgnwSXyWQ0aUYeKBa0FJzR+kyRS3P0AdGJHx6fRHT4IRM9uj+KSaetULm7NjQc8Vmoh8IhfNjgClDFMP8e3Pk=
X-Received: by 2002:a02:3b1d:: with SMTP id c29mr15992538jaa.67.1588615288354; 
 Mon, 04 May 2020 11:01:28 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 4 May 2020 21:01:17 +0300
Message-ID: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] How to set channel B reception with rfnoc USRP E310?
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============6836441502993607332=="
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

--===============6836441502993607332==
Content-Type: multipart/alternative; boundary="000000000000f27c1f05a4d651d2"

--000000000000f27c1f05a4d651d2
Content-Type: text/plain; charset="UTF-8"

Hello, I'm trying to switch between all four USRP E310 inputs. For this, I
use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna ("TX / RX",
0) but I can only switch in channel A. RFNoC Radio does not have the
set_rx_subdev_spec command. Tell me how can I switch across all 4 channels?

--000000000000f27c1f05a4d651d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, I&#39;m trying to switch between all four USRP E310=
 inputs. For this, I use the command self.uhd_rfnoc_streamer_radio_0.set_rx=
_antenna (&quot;TX / RX&quot;, 0) but I can only switch in channel A. RFNoC=
 Radio does not have the set_rx_subdev_spec command. Tell me how can I swit=
ch across all 4 channels?</div>

--000000000000f27c1f05a4d651d2--


--===============6836441502993607332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6836441502993607332==--

