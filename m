Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21380774E3
	for <lists+usrp-users@lfdr.de>; Sat, 27 Jul 2019 01:18:49 +0200 (CEST)
Received: from [::1] (port=53456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hr9U5-0005zH-UJ; Fri, 26 Jul 2019 19:18:45 -0400
Received: from resqmta-po-12v.sys.comcast.net ([96.114.154.171]:33770)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1hr9U2-0005tR-Ik
 for usrp-users@lists.ettus.com; Fri, 26 Jul 2019 19:18:42 -0400
Received: from resomta-po-20v.sys.comcast.net ([96.114.154.244])
 by resqmta-po-12v.sys.comcast.net with ESMTP
 id r8n8h5HhNTbnXr9TNhmWTl; Fri, 26 Jul 2019 23:18:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1564183081;
 bh=wZqK4ysCtZGN2p04beVU+038hD/ZYzYm87erkjLZPRE=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=Bmp/k5kSBGCM5huDE40dMx3yWhPlzn/EDn/euYZOD9aM2Q0CcFdcXPHCwhhEwTq4L
 yZlwt+aaESIlSLfrvzEy/9I/HK0yMRsWxj/+PFKEWBU9pCxAs7L6nOO+Qs77/zMSz8
 MKkGfGephcE1TULc8fIYwqcPedxnzNzObJUrElTUE95iZFyF2uQU54newuwCE0QjV+
 fEKQmDXiBlkVPyyUppT8D19lPCI/kVBd8z95smbNcwx7O5YZHVJIC1PX5EQ2WieM6v
 AzB+h8nBkXN0zTC8Tgyo4+DWSKlb0gg+EmZ8R32rrDQMxwRvx4O63nPAKObI6PJrfM
 Zf/JbpOyiB/Vg==
Received: from [IPv6:2601:647:4200:ea30:3c76:3f9d:2c37:c9f7]
 ([IPv6:2601:647:4200:ea30:3c76:3f9d:2c37:c9f7])
 by resomta-po-20v.sys.comcast.net with ESMTPSA
 id r9TMhIt4MBrKkr9TNhAcEu; Fri, 26 Jul 2019 23:18:01 +0000
X-Xfinity-VMeta: sc=0;st=legit
To: usrp-users@lists.ettus.com
References: <E53D28E7-DAF8-4BD4-9868-C953DC0250B1@ucsc.edu>
Message-ID: <97caa750-dbdb-fce1-db4d-cfa85fe575ed@comcast.net>
Date: Fri, 26 Jul 2019 16:18:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <E53D28E7-DAF8-4BD4-9868-C953DC0250B1@ucsc.edu>
Content-Language: en-US
Subject: Re: [USRP-users] Strange Loopback Test SNR Results USRP B210
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============3972665979047933979=="
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
--===============3972665979047933979==
Content-Type: multipart/alternative;
 boundary="------------B07FF6B9F6AFDD83E74FE739"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B07FF6B9F6AFDD83E74FE739
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Your noise floor calculation is incorrect. It's (k * 290 * B) + NF. 
Also, the B210 NF is dependent on receiver gain. See:

https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf

So the noise floor at 100 kHz bandwidth is more like -99 dBm.

As for IQ imbalance, 100 ksps is too low of a sample rate for the B210. 
Try 500 ksps or even 1 Msps.

Ron

On 7/26/19 08:36, Torsten Eckert via USRP-users wrote:
> Hi,
>
> I’m not sure if this is the correct place to ask this question, but maybe you can help. I’m working with a USRP B210. The test is a loopback test where the signal is a 20 kHz sine wave. The SNR from the frequency spectrum is ~80 dB less than the link budget predicts, and there also seems to be significant IQ imbalance. A better description is provided in the attached pdf. I’d like to know if there is an issue with the radio, or if it is a software issue, or maybe I don't properly understand a link budget. Any help would be great!
>
> Thanks,
> Torsten.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------B07FF6B9F6AFDD83E74FE739
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Your noise floor calculation is incorrect. It's (k * 290 * B) +
      NF. Also, the B210 NF is dependent on receiver gain. See:</p>
    <p><a class="moz-txt-link-freetext" href="https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf">https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf</a></p>
    <p>So the noise floor at 100 kHz bandwidth is more like -99 dBm.</p>
    <p>As for IQ imbalance, 100 ksps is too low of a sample rate for the
      B210. Try 500 ksps or even 1 Msps.</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 7/26/19 08:36, Torsten Eckert via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:E53D28E7-DAF8-4BD4-9868-C953DC0250B1@ucsc.edu">
      <pre class="moz-quote-pre" wrap="">Hi,

I’m not sure if this is the correct place to ask this question, but maybe you can help. I’m working with a USRP B210. The test is a loopback test where the signal is a 20 kHz sine wave. The SNR from the frequency spectrum is ~80 dB less than the link budget predicts, and there also seems to be significant IQ imbalance. A better description is provided in the attached pdf. I’d like to know if there is an issue with the radio, or if it is a software issue, or maybe I don't properly understand a link budget. Any help would be great!

Thanks,
Torsten.

</pre>
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

--------------B07FF6B9F6AFDD83E74FE739--


--===============3972665979047933979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3972665979047933979==--

