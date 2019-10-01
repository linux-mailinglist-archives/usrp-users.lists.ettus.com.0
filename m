Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD78C2FC3
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 11:13:45 +0200 (CEST)
Received: from [::1] (port=51502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFEE4-00024m-Pi; Tue, 01 Oct 2019 05:13:44 -0400
Received: from www.itsystems.it ([62.94.30.103]:36694 helo=mx1.itsystems.it)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1iFEE0-0001uX-Tc
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 05:13:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h8kVyI5NzqTOd5m1V53GTv9C2QXsMpx5SPSl1fbhUC0=; b=yP9Jgyihis5Zi1HqqkT5WHBtSJ
 1u3IkDgMOxzU/LFKQ4gVk3MV8jcRerTKAony+G4v1X/K3ZkwI2rEKvD8ZYZP3l/LFPvQqQ+a9uA7d
 5zN4WVl7NKm1poT3boEJMXDebvnRHUKrEx6xkLgLxH793XPU4Ueg/90FMmfX+Q5/kNIc=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1iFEBS-0005kT-KF
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 09:11:02 +0000
To: usrp-users@lists.ettus.com
References: <CAN8DKtL-c1cp--r=5uTc1em5=ZdA5fiM9Koz0fjCEZy5QUqFdg@mail.gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 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
 Hv257PEMJkU=
Message-ID: <6b3db94d-518c-4604-6d13-52baca3a8bd1@itsystems.it>
Date: Tue, 1 Oct 2019 11:12:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAN8DKtL-c1cp--r=5uTc1em5=ZdA5fiM9Koz0fjCEZy5QUqFdg@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Try the command. dd if=<original_file>.bit of=<new_file>.bit
 count=<the_rigth_size> count=1 and then try to configure the fpga
 <new_file>.bit
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [USRP-users] USRP X310 problem
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
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
Content-Type: multipart/mixed; boundary="===============2663270783219058574=="
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
--===============2663270783219058574==
Content-Type: multipart/alternative;
 boundary="------------ECB484CEAFCCC27BDDC801BD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ECB484CEAFCCC27BDDC801BD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Try the command.

dd if=<original_file>.bit of=<new_file>.bit count=<the_rigth_size> count=1

and then try to configure the fpga <new_file>.bit


On 27/09/19 16:12, Aaron Montilla via USRP-users wrote:
> Hi,
> I am trying to set the connection between my PC and my USRP X310.
> I ran the command uhd_find_devices, and successfully it found the
> USRP. Then I use the uhd_usrp_probe command and I had the next error:
> aaron@leonard:~$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.git-71-g18bc320d
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [ERROR] [0/DmaFIFO_0] Major compat number mismatch for noc_shell:
> Expecting 6, got 5.
> Error: RuntimeError: FPGA component `noc_shell' is revision 5 and UHD
> supports revision 6. Please either upgrade the FPGA image
> (recommended) or downgrade UHD.
>
> I thought that upgrade the USRP was the best option, but when I try, I
> have another error saying that the size of the image is too large (
> only for 1 byte). I also read that I had to use the .bin file but I
> didn't have any.
> So, could you please tell me what I could do?
>
> Thank you very much in advance.
> Kind regards,
> Aaron
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--------------ECB484CEAFCCC27BDDC801BD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Try the command.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">dd if=&lt;original_file&gt;.bit
      of=&lt;new_file&gt;.bit count=&lt;the_rigth_size&gt; count=1</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">and then try to configure the fpga
      &lt;new_file&gt;.bit<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 27/09/19 16:12, Aaron Montilla via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAN8DKtL-c1cp--r=5uTc1em5=ZdA5fiM9Koz0fjCEZy5QUqFdg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi,</div>
        <div>I am trying to set the connection between my PC and my USRP
          X310. <br>
        </div>
        <div>I ran the command uhd_find_devices, and successfully it
          found the USRP. Then I use the uhd_usrp_probe command and I
          had the next error:</div>
        <div>aaron@leonard:~$ uhd_usrp_probe<br>
          [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
          UHD_3.15.0.git-71-g18bc320d<br>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 1472 bytes.<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
          0.929a<br>
          [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
          0xF1F0D00000000000)<br>
          [ERROR] [0/DmaFIFO_0] Major compat number mismatch for
          noc_shell: Expecting 6, got 5.<br>
          Error: RuntimeError: FPGA component `noc_shell' is revision 5
          and UHD supports revision 6. Please either upgrade the FPGA
          image (recommended) or downgrade UHD.</div>
        <div><br>
        </div>
        <div>I thought that upgrade the USRP was the best option, but
          when I try, I have another error saying that the size of the
          image is too large ( only for 1 byte). I also read that I had
          to use the .bin file but I didn't have any. <br>
        </div>
        <div>So, could you please tell me what I could do?</div>
        <div><br>
        </div>
        <div>Thank you very much in advance.</div>
        <div>Kind regards,</div>
        <div>Aaron<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------ECB484CEAFCCC27BDDC801BD--


--===============2663270783219058574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2663270783219058574==--

