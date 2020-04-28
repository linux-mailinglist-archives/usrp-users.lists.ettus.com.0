Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 820C41BBA3C
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2020 11:47:51 +0200 (CEST)
Received: from [::1] (port=34636 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTMqC-0002Tq-BU; Tue, 28 Apr 2020 05:47:48 -0400
Received: from mail-wm1-f42.google.com ([209.85.128.42]:51838)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <conan79x@gmail.com>) id 1jTMq7-0002Mx-6C
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 05:47:43 -0400
Received: by mail-wm1-f42.google.com with SMTP id x4so2000181wmj.1
 for <usrp-users@lists.ettus.com>; Tue, 28 Apr 2020 02:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=q73Fx5lrOVx0kcrfle7spKBbZDB3KyS6dKI3NhY7C2g=;
 b=upVrytHmgjf4VzKl1qbWgq+BKktTVZBzE5B2gLG3T9HdLE+XeTlJXzqw19rfq6OthR
 LF+vu0SHWiozyMtFj+bAnjmKOYbG12SdepFhgxdxyYtYksph7dNgyYzo0t/xvuKq6cag
 VncELC5eBbRSgqpOqx86zN9rk+vmd9ImMC+82JBE4rnZ5e8oHtDB0+82ZMO3mq6DFyTE
 acfabDpOA7iZF/riFftLPqVM2LaH7IBmaYsbyaoacBj4BsCbyBrfSgLi+/MH4unmWBfZ
 oPZ5ffwXaKi5HCwSJKna0KqEX571iv6ZNIV0FBAm3I4y0WnYzPdkfe0Fn0cd8f7x+KjD
 g6tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=q73Fx5lrOVx0kcrfle7spKBbZDB3KyS6dKI3NhY7C2g=;
 b=jm2fWZ92NKIzJ9gJdMesftvvlYujZ7Oaqbk8G7Wc55TAnhKWggWOVp3apCKWVxtuat
 TEVylAc05xMHyu2ZFr9+Bgzm/7O0oz6h/E9BgEBCIvhs3XTIFM0fYo09qUc1lBJMz+ZQ
 zxcFn6D5ECElGvIcwd2zc9DrV4q5+5v7sm/5AsDWAsGrBxIJbZSs7cn6RTTdgvKNxUi1
 cY/2gMyE89KDb4tb1rmceTgDST4kdoPJ1YEznWFZFDy7r/sQcXsixXRhA5jIznXaw8H2
 M+N9sN9yhR0uFO5O5ir+/xa7op2Wy5xZj7TYq3fWFvvg3PYxsJP/+Q/4grK+npDUlfu8
 5BTw==
X-Gm-Message-State: AGi0PuYtQrl4dlg/nF7D2uJXNdYAkXMzcbDtMXAebnns+FCUmCq4Y7Q+
 plOKSu9nthFPOQqDdVVMdHBSS6F0
X-Google-Smtp-Source: APiQypKJfX+LU7PNbqThVJ94+M88ck7Z0re2ZIyuAjk3nYWyNqrwhoI+IMIDUSH2vpJMvPCTRvy2Zw==
X-Received: by 2002:a1c:a7d7:: with SMTP id q206mr3427490wme.45.1588067222001; 
 Tue, 28 Apr 2020 02:47:02 -0700 (PDT)
Received: from [192.168.1.16] (net-2-39-140-22.cust.vodafonedsl.it.
 [2.39.140.22])
 by smtp.gmail.com with ESMTPSA id t16sm25318131wrb.8.2020.04.28.02.47.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 02:47:01 -0700 (PDT)
To: usrp-users@lists.ettus.com
Message-ID: <3136f9b5-76b8-8d8c-1feb-198ef9061cd4@gmail.com>
Date: Tue, 28 Apr 2020 11:47:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] E320 tuning time
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
From: conan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: conan <conan79x@gmail.com>
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

Hi all,

I am using an E320 with UHD 3.15 10GBE interface (XG FPGA image).

When I call "uhd::usrp::multi_usrp::set_rx_freq()" it takes about 100ms 
to return.

Same code with a B200/B200mini takes about 5ms.


RFIC should be very similar so I expect more or less the same "tuning 
time".


Why does exist this difference ?

Does exist any way to have a lower tuning time (similar to B200) for the 
E320 ?


Best Regards,

Conan


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
