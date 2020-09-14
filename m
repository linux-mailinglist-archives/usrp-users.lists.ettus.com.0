Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDF62696EB
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 22:46:12 +0200 (CEST)
Received: from [::1] (port=58120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHvMY-0007UE-Gf; Mon, 14 Sep 2020 16:46:10 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:38257)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kHvMU-0007NT-2l
 for USRP-users@lists.ettus.com; Mon, 14 Sep 2020 16:46:06 -0400
Received: by mail-qk1-f176.google.com with SMTP id d20so1764456qka.5
 for <USRP-users@lists.ettus.com>; Mon, 14 Sep 2020 13:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=O2nJyTbyLAYtHEhRzO/BP4DZny5A32hxMGU0BvDQtAY=;
 b=jS0DZqyRoTjzB/l/7mkH02OYHP7SFovkJbctpr/X9OzLaJJVy2VY21Xk7cwzGM1XxP
 AnaShrEjYZpcyvc3fb3+99yEfCjmVSPJ6zHZEaP0jGcUpBxtck11z6+t96GrJFRScdU0
 LSTuGsqTfua5L3MjeJFGPyio3sRffggt+y6RcS7ZY9vaB6F0ytw99LLV8EpdLrxXAVhd
 U5Dv81s+yx6RgBajCdMKm1t+5fSVfMuGzkOMNEH8qdwAqRxnldOhU28XOwx8czqDRvRF
 feiX3aViJU2i2DLDeM1OU4Y/AegGrijSH+99m6inXq73dsmAoSOCR/AR9VRZMkBnSJu5
 orwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=O2nJyTbyLAYtHEhRzO/BP4DZny5A32hxMGU0BvDQtAY=;
 b=BlRu+sdRZ0DhzlAX9IS60CGW70W7d3uoQjT+UX4kTYd0DBcUg7c57HUwPiGYCy70R3
 IHf5wlhkxen0BtF093mdr0Bsj2XsDm+Yi5CPszSC8NdFeBvKgANK9PDLqs2xlhGq5nyD
 qu+c6gLnVpsTjOjWbwPt9Bkhj4vg1mjzxkngM+5I7/Am+4VgrKoouUP+7iAYfVRAe1U8
 leWaGcyuhVSYy+zLbVphxNBfn2nQ7OIbWP8VqjwMguhQnfwoHRSEQDgVNEOim2klbwAu
 axvxVRIGArWYZV127Dgskhcnpa7nLYMHkNqQU8FueZHxptevkKBOli2VuhgzRfH6kLG2
 S5bw==
X-Gm-Message-State: AOAM531EfQTVd4m+31F+0OXmKNojvMy2KxjWaw4MD6Y8MSYSlbl94D38
 VzClp3PhMg1zLpq+lLCt141PQSHPultPdg==
X-Google-Smtp-Source: ABdhPJzQfXYSmC2d1x4x140fhqdphToLrI31MSxULTPBe1zqPPpy2rZiJbzzUcfXaqewRv429pK1sA==
X-Received: by 2002:a37:a187:: with SMTP id
 k129mr14592592qke.147.1600116325230; 
 Mon, 14 Sep 2020 13:45:25 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id w59sm14685554qtd.1.2020.09.14.13.45.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Sep 2020 13:45:24 -0700 (PDT)
Message-ID: <5F5FD664.90409@gmail.com>
Date: Mon, 14 Sep 2020 16:45:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Duixian Liu <duixian@us.ibm.com>
CC: USRP-users@lists.ettus.com
References: <OF4FD4A827.30B9CEDF-ON002585E0.00685374-852585E0.0069447D@notes.na.collabserv.com>
 <300817F0-EA15-4CC7-9A58-62EBEF427C98@gmail.com>
 <OFD12B3F23.07067C06-ON002585E3.006E063A-852585E3.006E2678@notes.na.collabserv.com>
In-Reply-To: <OFD12B3F23.07067C06-ON002585E3.006E063A-852585E3.006E2678@notes.na.collabserv.com>
Subject: Re: [USRP-users] N310 stoped working
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
Content-Type: multipart/mixed; boundary="===============2652043625980210638=="
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
--===============2652043625980210638==
Content-Type: multipart/alternative;
 boundary="------------020008040809070709050300"

This is a multi-part message in MIME format.
--------------020008040809070709050300
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/14/2020 04:04 PM, Duixian Liu wrote:
> Actually I can ping the device.
>
> When I do the measurements, I use SFP+ port 0. But for the management, 
> I use 10/100/1000 ENET RJ-45 ENET port.
> The "ping 192.168.10.100" to the 10/100/1000 ENET RJ-45 ENET port is 
> Ok. But "uhd_usrp_probe" says "no devices found" and 
> "uhd_find_devices" says "reachable: No".
>
Can you SSH to the management port?



--------------020008040809070709050300
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/14/2020 04:04 PM, Duixian Liu
      wrote:<br>
    </div>
    <blockquote
cite="mid:OFD12B3F23.07067C06-ON002585E3.006E063A-852585E3.006E2678@notes.na.collabserv.com"
      type="cite"><span style=" font-size:10pt;font-family:sans-serif">Actually
        I can ping
        the device.</span><br>
      <br>
      <span style=" font-size:10pt;font-family:sans-serif">When I do the
        measurements, I use </span><span style="
        font-size:12pt;font-family:Verdana">SFP+
        port 0. But for the management, I use 10/100/1000 ENET RJ-45
        ENET port.</span><br>
      <span style=" font-size:12pt;font-family:Verdana">The "ping
        192.168.10.100"
        to the 10/100/1000 ENET RJ-45 ENET port is Ok. But
        "uhd_usrp_probe"
        says "no devices found" and "uhd_find_devices" says
        "reachable: No".</span><br>
      <span style=" font-size:10pt;font-family:sans-serif"></span><br>
    </blockquote>
    Can you SSH to the management port?<br>
    <br>
    <br>
  </body>
</html>

--------------020008040809070709050300--


--===============2652043625980210638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2652043625980210638==--

