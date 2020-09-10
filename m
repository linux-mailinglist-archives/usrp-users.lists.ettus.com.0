Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9640F26497A
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:15:28 +0200 (CEST)
Received: from [::1] (port=44700 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGPEN-0006L8-K9; Thu, 10 Sep 2020 12:15:27 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:34894)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGPEJ-0006Aa-Im
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 12:15:23 -0400
Received: by mail-qk1-f175.google.com with SMTP id q5so6657768qkc.2
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 09:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=sVQN/GHi5hyFE+iFrLADUJ6NQgD6KlbxMqYzd95CbSI=;
 b=ARl9u2/ngufrBWnDAEeUzWX93eAjPPQVMfpE0WdYY4UvAWXyzgehTR4DnxcjWuRKYF
 CqKaUzYR1os8YqWtYp6G2pXL9069beAnhM/g0sE5JdVxnSPoezyLZfndWY2jTSZUdCrB
 w5xpppB9ZwzyT29V7P6KdQFKxvJlalwbQxyM1QolWClbQukyt+jflW0aKzBBLoNhdvsz
 zT/dSuh4ze8Vqx8G9n0XrDzuzaw7108B+Sf6zJnoi+LXLv3dYzP/7F5t46Hh1/k2CQsW
 lmVPowLXnfuOMbtgkbyw0WA+FoXegpxr65rPziA9KibCKY6nnlSbtEaXkDkDrbO0A9D1
 FRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=sVQN/GHi5hyFE+iFrLADUJ6NQgD6KlbxMqYzd95CbSI=;
 b=LPvHUBkgVQJYr4W31elGsqRiZTcJIF2kg0kaMk/sAsnPQxsFdO99qibldeEK9Mr4xU
 ZKdILbiafVeWLXhMs/Gg96TUGZF4HJDXiJJHrGbrrSs8iehI8XxH1/B5n6eYfu/Tq3PR
 DX1hj1l0Ui7qVbGJ4RbuDpnPxkWp/cfj063WlkE1Y9qUSwJTuaq6AL3LLdMfHomC6vcC
 sx7K8kOQ4dXvQAJ9VXSHYQpYY0w8Og5gkcTUMzPRa2IGFXshhPsk+KUc65gQFUyrLXRu
 54dD6/RI6yaipvsELMK7VI4BS5G74umiGGFrHM/tWkMQsTL/Q0XIxIsQNQtLz48DqYhi
 Ll7w==
X-Gm-Message-State: AOAM5313vjaXenaNdOZPD1gSmXdmEvyTMGlAcPqmgNc30tvpzDBtV2Pi
 81Cwmlbck6Wx9shGvDqR5HDXbwUMTS9MDQ==
X-Google-Smtp-Source: ABdhPJzvQ8C8oSo2k022nTh9K3ov0EjYy7xohhrQHuYvFXHIORPmgxZPfgR1/STGHdMNxUuR+lqHbg==
X-Received: by 2002:a05:620a:78f:: with SMTP id
 15mr8220983qka.340.1599754482898; 
 Thu, 10 Sep 2020 09:14:42 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g203sm7205997qkb.51.2020.09.10.09.14.42
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 09:14:42 -0700 (PDT)
Message-ID: <5F5A50F1.4080500@gmail.com>
Date: Thu, 10 Sep 2020 12:14:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
In-Reply-To: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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
Content-Type: multipart/mixed; boundary="===============9195052911106137994=="
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
--===============9195052911106137994==
Content-Type: multipart/alternative;
 boundary="------------050302090906050204090202"

This is a multi-part message in MIME format.
--------------050302090906050204090202
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2020 11:43 AM, Xiang Ma via USRP-users wrote:
> Hi, I am running a rfid code on USRP, but there occur some errors and 
> warnings, and I am not sure where do the errors come from and how to 
> address them. Please help me.
>
> hu@hu:~/rfid/Gen2-UHF-RFID-Reader/gr-rfid/apps$ sudo GR_SCHEDULER=STS 
> nice -n -20 python ./reader.py
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> *[ERROR] [X300] RuntimeError: System receive MTU size is less than the 
> minimum required by the IP protocol.*
> *[WARNING] [X300] You requested a receive frame size of (256) but your 
> NIC's max frame size is (0).Please verify your NIC's MTU setting using 
> 'ip link' or set the recv_frame_size argument appropriately.UHD will 
> use the auto-detected max frame size for this connection.
> [WARNING] [X300] For the 192.168.10.2 connection, UHD recommends a 
> send frame size of at least 1472 for best
> performance, but your configuration will only allow 0.This may 
> negatively impact your maximum achievable sample rate.
> Check the MTU on the interface and/or the send_frame_size argument.
> [WARNING] [X300] For the 192.168.10.2 connection, UHD recommends a 
> receive frame size of at least 1472 for best
> performance, but your configuration will only allow 0.This may 
> negatively impact your maximum achievable sample rate.
> Check the MTU on the interface and/or the recv_frame_size argument.*
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1
> [WARNING] [RFNOC] Assuming max packet size for 0/DUC_0
> [WARNING] [RFNOC] Assuming max packet size for 0/DUC_1
> [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0
> [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0
> 'Q' to quit
> [WARNING] [STREAMER] Requested recv_frame_size of 256 exceeds the 
> maximum possible on this stream. Using 0
> Uq
>
>  --------------------------
> | Number of queries/queryreps sent : 0
> | Current Inventory round : 1
>  --------------------------
> | Correctly decoded EPC : 0
> | Number of unique tags : 0
>  --------------------------
>
>
Are you running inside a VM?

What does 'ifconfig' return for the interface the X3xx USRP is connected 
to?  It looks like the MTU is badly misconfigured.



--------------050302090906050204090202
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/10/2020 11:43 AM, Xiang Ma via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hi, I am running a rfid code on USRP, but there occur some
          errors and warnings, and I am not sure where do the errors
          come from and how to address them. Please help me.<br>
        </div>
        <div><br>
        </div>
        <div>hu@hu:~/rfid/Gen2-UHF-RFID-Reader/gr-rfid/apps$ sudo
          GR_SCHEDULER=STS nice -n -20 python ./reader.py<br>
          [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_3.15.0.HEAD-0-gaea0e2de<br>
          [INFO] [X300] X300 initialization sequence...<br>
          <b>[ERROR] [X300] RuntimeError: System receive MTU size is
            less than the minimum required by the IP protocol.</b><br>
          <b>[WARNING] [X300] You requested a receive frame size of
            (256) but your NIC's max frame size is (0).Please verify
            your NIC's MTU setting using 'ip link' or set the
            recv_frame_size argument appropriately.UHD will use the
            auto-detected max frame size for this connection.<br>
            [WARNING] [X300] For the 192.168.10.2 connection, UHD
            recommends a send frame size of at least 1472 for best<br>
            performance, but your configuration will only allow 0.This
            may negatively impact your maximum achievable sample rate.<br>
            Check the MTU on the interface and/or the send_frame_size
            argument.<br>
            [WARNING] [X300] For the 192.168.10.2 connection, UHD
            recommends a receive frame size of at least 1472 for best<br>
            performance, but your configuration will only allow 0.This
            may negatively impact your maximum achievable sample rate.<br>
            Check the MTU on the interface and/or the recv_frame_size
            argument.</b><br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
          0.929b<br>
          [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
          0xF1F0D00000000000)<br>
          [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
          [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
          [INFO] [0/Radio_0] Initializing block control (NOC ID:
          0x12AD100000000001)<br>
          [INFO] [0/Radio_1] Initializing block control (NOC ID:
          0x12AD100000000001)<br>
          [INFO] [0/DDC_0] Initializing block control (NOC ID:
          0xDDC0000000000000)<br>
          [INFO] [0/DDC_1] Initializing block control (NOC ID:
          0xDDC0000000000000)<br>
          [INFO] [0/DUC_0] Initializing block control (NOC ID:
          0xD0C0000000000000)<br>
          [INFO] [0/DUC_1] Initializing block control (NOC ID:
          0xD0C0000000000000)<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DUC_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DUC_1<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0<br>
          'Q' to quit<br>
          [WARNING] [STREAMER] Requested recv_frame_size of 256 exceeds
          the maximum possible on this stream. Using 0<br>
          Uq<br>
          <br>
           --------------------------<br>
          | Number of queries/queryreps sent : 0<br>
          | Current Inventory round : 1<br>
           --------------------------<br>
          | Correctly decoded EPC : 0<br>
          | Number of unique tags : 0<br>
           --------------------------</div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    Are you running inside a VM?<br>
    <br>
    What does 'ifconfig' return for the interface the X3xx USRP is
    connected to?  It looks like the MTU is badly misconfigured.<br>
    <br>
    <br>
  </body>
</html>

--------------050302090906050204090202--


--===============9195052911106137994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9195052911106137994==--

