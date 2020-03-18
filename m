Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA055189A2C
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 12:02:50 +0100 (CET)
Received: from [::1] (port=37476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEWTH-0001qq-Jn; Wed, 18 Mar 2020 07:02:47 -0400
Received: from resqmta-po-07v.sys.comcast.net ([96.114.154.166]:34843)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1jEWTD-0001kN-0X
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 07:02:43 -0400
Received: from resomta-po-04v.sys.comcast.net ([96.114.154.228])
 by resqmta-po-07v.sys.comcast.net with ESMTP
 id EWRLj5tuHEIvHEWSXjsrnC; Wed, 18 Mar 2020 11:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1584529321;
 bh=BlsFwt/ePTNTNsG/NPgdjipmbUxGCFAUYs5FSPwG9Fo=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=KTuCxz1PXlmi6NuFuXplRwhzxnIO7GjTUA8ACEaQICcVP4yQGEKdftd/Z5VvzsKVl
 Z4c+hvoheTBr7XEe4zIffZCQa0ztLuN5vbimNSU+RSECgTgj9K73PpSTd0D2oRGzr5
 6AJBf5SqdDKtOGlvnBwTb5KssdUERSbJsv6st4R8xhgJLs3sjRZxLdjQE0Lbt/QTfU
 gJRpZRW3Xm06bNMXopMNonx1KMe9Mv9egGwgiqPmcMcux6C+7obS0+eV9PqRPMGvZn
 sf/owU5rfxCDR3N8tCb3DFIf0xlidjFqDkHbC5QM03RuitTm1n2+L0AjeWhM5JTbGQ
 4CpmmRmhFDX7Q==
Received: from [IPv6:2601:647:4200:ea30:24d3:52b7:aff6:d45d]
 ([IPv6:2601:647:4200:ea30:24d3:52b7:aff6:d45d])
 by resomta-po-04v.sys.comcast.net with ESMTPSA
 id EWSWjNRMCmfrzEWSXjQYGK; Wed, 18 Mar 2020 11:02:01 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
Message-ID: <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
Date: Wed, 18 Mar 2020 04:02:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Apologize if duplicate : UHD 3.15 isn't using USB
 3.0 although Linux driver are loaded
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============0737389573972323575=="
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
--===============0737389573972323575==
Content-Type: multipart/alternative;
 boundary="------------58F105A8E66C286554DECDB7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------58F105A8E66C286554DECDB7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

dmesg should say "new SuperSpeed USB device number X using xhci_hcd" or 
"new SuperSpeed Gen 1 USB device number X using xhci_hcd" if you have a 
newer kernel.

"high-speed" means USB 2.0.

Ron

On 3/18/20 03:41, Rodolphe Bertolini via USRP-users wrote:
> Dear all,
>
> I have been using a USRP B210 on a laptop for months now. For reasons, 
> I switched to another Linux session, and using this session UHD fails 
> to talk to B210 over USB 3.0
>
> dmesg tells me it is using the xhci_hcd driver (which I believe is the 
> driver for USB 3.0), and is also mentioning "new high-speed USB", 
> which leads me to think that USB 3.0 link is well recognized and active:
>
> [  306.133028] usb 1-1: new high-speed USB device number 16 using xhci_hcd
> [  306.260349] usb 1-1: New USB device found, idVendor=2500, 
> idProduct=0020
> [  306.260351] usb 1-1: New USB device strings: Mfr=1, Product=2, 
> SerialNumber=3
> [  306.260352] usb 1-1: Product: USRP B200
> [  306.260354] usb 1-1: Manufacturer: Ettus Research LLC
> [  306.260355] usb 1-1: SerialNumber: 31B9289
>
> However, when running any uhd command line, it fails using USB 3.0:
>
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; 
> UHD_3.15.0.0-release
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 2.
>
> I have also tried with UHD 3.14.1, no improvement.
>
> I remember having a similar issue (maybe the same?) that had been 
> solved with something related to udev, but I sadly didn't take any 
> note of this.
>
> Do you have any hint?
>
> Thank you.
> Regards,
> Rodolphe
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------58F105A8E66C286554DECDB7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>dmesg should say "new SuperSpeed USB device number X using
      xhci_hcd" or "new SuperSpeed Gen 1 USB device number X using
      xhci_hcd" if you have a newer kernel.</p>
    <p>"high-speed" means USB 2.0.<br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 3/18/20 03:41, Rodolphe Bertolini
      via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Dear all,</div>
        <div><br>
        </div>
        <div>I have been using a USRP B210 on a laptop for months now.
          For reasons, I switched to another Linux session, and using
          this session UHD fails to talk to B210 over USB 3.0<br>
        </div>
        <div><br>
        </div>
        <div>dmesg tells me it is using the xhci_hcd driver (which I
          believe is the driver for USB 3.0), and is also mentioning 
          "new high-speed USB", which leads me to think that USB 3.0
          link is well recognized and active:</div>
        <div><br>
        </div>
        <div>[  306.133028] usb 1-1: new high-speed USB device number 16
          using xhci_hcd<br>
          [  306.260349] usb 1-1: New USB device found, idVendor=2500,
          idProduct=0020<br>
          [  306.260351] usb 1-1: New USB device strings: Mfr=1,
          Product=2, SerialNumber=3<br>
          [  306.260352] usb 1-1: Product: USRP B200<br>
          [  306.260354] usb 1-1: Manufacturer: Ettus Research LLC<br>
          [  306.260355] usb 1-1: SerialNumber: 31B9289</div>
        <div><br>
        </div>
        <div>However, when running any uhd command line, it fails using
          USB 3.0:</div>
        <div><br>
        </div>
        <div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
          Boost_105800; UHD_3.15.0.0-release<br>
          [INFO] [B200] Detected Device: B210<br>
          [INFO] [B200] Operating over USB 2.</div>
        <div><br>
        </div>
        <div>I have also tried with UHD 3.14.1, no improvement.</div>
        <div><br>
        </div>
        <div>I remember having a similar issue (maybe the same?) that
          had been solved with something related to udev, but I sadly
          didn't take any note of this.</div>
        <div><br>
        </div>
        <div>Do you have any hint?</div>
        <div><br>
        </div>
        <div>Thank you.<br>
        </div>
        <div>Regards,</div>
        <div>Rodolphe</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------58F105A8E66C286554DECDB7--


--===============0737389573972323575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0737389573972323575==--

