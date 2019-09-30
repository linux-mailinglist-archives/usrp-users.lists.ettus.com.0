Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F55C2934
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2019 23:59:26 +0200 (CEST)
Received: from [::1] (port=41014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iF3hS-0007xk-I7; Mon, 30 Sep 2019 17:59:22 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:42413)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <frestuc@gmail.com>) id 1iF3hO-0007pw-8C
 for usrp-users@lists.ettus.com; Mon, 30 Sep 2019 17:59:18 -0400
Received: by mail-qt1-f179.google.com with SMTP id w14so19011459qto.9
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 14:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=CNOMNr97yAi+7qK7OLjI0Rz8XTAM+QRUrXR8CPOcBDA=;
 b=fEznFORj4jArzxTlIQk0jDOLzzNmmu7xVX5UyIynYNal8oEF/7tzYEOrqXVdbYcOfs
 lEQhqM3ucNu69oR7kXyCPtmqRl13thsAobFIjrE5l60hjvCSYYUxXJ8QjT1szJNn0c1R
 /mnMSoBsP/J35b2+kz4nRtYeGrCjfzRH/7gmAExyVK+DnwDu0F5eLnlbXCkcQF2FqL//
 IleX9C8Hxs/P0FDMRlmocH3mT5EmIz/fZx4R8BTGbB/ixvzJrUoxeWJgdibRHX87sygp
 xJacfupn5wpz5OPu2KKK5/jwVOP+xTSzQssj5YaMppeDmeiTXJcp1+p7F5o3RogC30qZ
 O0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=CNOMNr97yAi+7qK7OLjI0Rz8XTAM+QRUrXR8CPOcBDA=;
 b=t8Tw9ARklTq2ns90rtu4/HRRxHREdkbRjvsiiycEYFelOUQLakv/tQyeICQ1ZgNm1G
 hcPICP5zDQtyofxovULrdj0C8Oob9Qh0N9z4PgD/MJuG+NVMkKFCVrJrbbllgVyBSwIs
 IM3TYIbzQifTr1kwcm7CAf84LI2AYQHgdoDJHysxr9EibbyHu7LLpXjAtizTup+ePBwc
 2PDzm+pafVofXZ9iOXNc0eGg4NaKfnvsdAt6CW9SFDRICvxiS4Oaz9OHf2UkQcCRnXJ1
 9OSWhRH0ojVGlzKO0XETog0xPLhV0Ex22ADgfWoROLLCTxXyV1LywboQNwLNSDXO6gFC
 fT7w==
X-Gm-Message-State: APjAAAX0z6a4MWRU/0IJONNtmUslW5h8s4DPalMkb+wgxBqkoot95qM8
 sXqUNS+mWbX7i1S5NxUq4R5dtw1SRXs=
X-Google-Smtp-Source: APXvYqy7id2Urg4RWtrwJ+bXIvGyZYZWJXtxbGpimgvNrek3/HHDInoP3fmLvrHqwVRNtRPnofmG+g==
X-Received: by 2002:a0c:8a6d:: with SMTP id 42mr22803893qvu.138.1569880717147; 
 Mon, 30 Sep 2019 14:58:37 -0700 (PDT)
Received: from [10.75.8.38] ([129.10.163.26])
 by smtp.gmail.com with ESMTPSA id a11sm6615134qkc.123.2019.09.30.14.58.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2019 14:58:36 -0700 (PDT)
To: usrp-users@lists.ettus.com
Message-ID: <4e2861db-3333-ffee-e0c0-cf8f525dcecb@gmail.com>
Date: Mon, 30 Sep 2019 17:58:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] uhd_usrp_loader script defaults firmware to pre-built
 bin file
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
From: Francesco Restuccia via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francesco Restuccia <frestuc@gmail.com>
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

Dear all,

I am trying to load my customized firmware into an USRP N210. I have 
tried the following but it defaults to the default image, regardless of 
the input:

frank@frank-iMac:~$ uhd_image_loader 
--args="type=usrp2,addr=192.168.10.2" 
--fw-path="/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin" 
--no-fpga
[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
UHD_3.15.0.git-71-g18bc320d
Unit: USRP N210 r4 (F2E28F, 192.168.10.2)
Firmware image: /opt/uhd_gnuradio_installs/share/uhd/images/usrp_n210_fw.bin
-- Erasing firmware image...successful.
-- Writing firmware image...successful.
-- Verifying firmware image...successful.

Any suggestion?

Thanks,

Francesco


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
