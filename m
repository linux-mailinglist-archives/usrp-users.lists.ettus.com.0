Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C7D25E7A9
	for <lists+usrp-users@lfdr.de>; Sat,  5 Sep 2020 15:00:38 +0200 (CEST)
Received: from [::1] (port=46628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kEXo1-0006Gu-Ao; Sat, 05 Sep 2020 09:00:33 -0400
Received: from postman.dtnt.info ([62.219.91.51]:38490)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kEXnw-00069t-Qj
 for usrp-users@lists.ettus.com; Sat, 05 Sep 2020 09:00:29 -0400
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id D34A347936
 for <usrp-users@lists.ettus.com>; Sat,  5 Sep 2020 15:59:17 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id 9DBA39F813
 for <usrp-users@lists.ettus.com>; Sat,  5 Sep 2020 15:59:17 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id n_T2o8UWrf6v for <usrp-users@lists.ettus.com>;
 Sat,  5 Sep 2020 15:59:16 +0300 (IDT)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
 [209.85.161.47]) by o.dtnt.email (Postfix) with ESMTPSA id 511F19F792
 for <usrp-users@lists.ettus.com>; Sat,  5 Sep 2020 15:59:16 +0300 (IDT)
Received: by mail-oo1-f47.google.com with SMTP id a6so2268656oog.9
 for <usrp-users@lists.ettus.com>; Sat, 05 Sep 2020 05:59:15 -0700 (PDT)
X-Gm-Message-State: AOAM533P6qcWDzCubzQytjbtjxoJa7FixKcyPKvt+vfgV3UBeSs3TKkg
 IpMb4/agTh55O2IlsCpHQ7FSxmOFeXil2jHLTkc=
X-Google-Smtp-Source: ABdhPJwEm7V10jxIZ421KZD7+RSa8JQrJz8YeDtjWyhSR8iB1fiNDKTBcMAD/FgSdKfhU+89DOZesNnBBYAR+E3rU1k=
X-Received: by 2002:a4a:d0ad:: with SMTP id t13mr9480323oor.58.1599310753991; 
 Sat, 05 Sep 2020 05:59:13 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 5 Sep 2020 15:59:02 +0300
X-Gmail-Original-Message-ID: <CACDReSz3C6hGmMmC48qd4O8hPE5Hvw4EarxGV5Tsq9ONUpMNYA@mail.gmail.com>
Message-ID: <CACDReSz3C6hGmMmC48qd4O8hPE5Hvw4EarxGV5Tsq9ONUpMNYA@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: D34A347936.A438B
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: [USRP-users] Rx sample rate for USRP E310
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============7223961486878376332=="
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

--===============7223961486878376332==
Content-Type: multipart/alternative; boundary="00000000000060924905ae908d19"

--00000000000060924905ae908d19
Content-Type: text/plain; charset="UTF-8"

Hello,

I am just starting out with the USRP E310 so bare with me.
I am trying to capture samples to file using: ./rx_samples_to_file --freq
2.4e9 --rate 40e6 --bw 40e6 --gain 30 --nsamps 1000000 --file samp4.dat
I get the following two warnings during processing:
------------------------------------------------------------------------------------------------------
[WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit rates
may encounter errors.
------------------------------------------------------------------------------------------------------

Setting RX Rate: 40.000000 Msps...
[WARNING] [MULTI_USRP] The hardware does not support the requested RX
sample rate:
Target sample rate: 40.000000 MSps
Actual sample rate: 16.000000 MSps
------------------------------------------------------------------------------------------------------

Are the warnings related?
I tried various combinations of number of samples bandwidths and sample
rates and can't get more than 16 Msps.
Why can't I get a sample rate of more than 16 MSps?
Any help will be appreciated.

I am running UHD v3.15.0.0_e310_sg3.

Thanks,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000060924905ae908d19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am just starting ou=
t with the USRP E310 so bare with me.</div><div>I am trying to capture samp=
les to file using: ./rx_samples_to_file --freq 2.4e9 --rate 40e6 --bw 40e6 =
--gain 30 --nsamps 1000000 --file samp4.dat</div><div>I get the following t=
wo warnings during processing:</div><div>----------------------------------=
--------------------------------------------------------------------<br></d=
iv><div>[WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit=
 rates may encounter errors.</div><div>
---------------------------------------------------------------------------=
---------------------------

</div><div>Setting RX Rate: 40.000000 Msps...<br>[WARNING] [MULTI_USRP] The=
 hardware does not support the requested RX sample rate:<br>Target sample r=
ate: 40.000000 MSps<br>Actual sample rate: 16.000000 MSps</div><div>
---------------------------------------------------------------------------=
---------------------------

</div><div>Are the warnings related?</div><div></div><div>I tried various c=
ombinations of number of samples bandwidths and sample rates and can&#39;t =
get more than 16 Msps.<br></div><div>
Why can&#39;t I get a sample rate of more than 16 MSps?

</div><div>Any help will be appreciated.</div><div><br></div><div>I am runn=
ing UHD v3.15.0.0_e310_sg3.</div><div><br></div><div>Thanks,</div><div>Ofer=
 Saferman<br></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000060924905ae908d19--


--===============7223961486878376332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7223961486878376332==--

