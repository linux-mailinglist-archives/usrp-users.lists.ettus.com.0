Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4FB853D3
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 21:42:38 +0200 (CEST)
Received: from [::1] (port=47942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvRpU-0006wY-3D; Wed, 07 Aug 2019 15:42:36 -0400
Received: from sender-of-o52.zoho.eu ([31.186.226.248]:21036)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <r.stoica@wiosense.de>)
 id 1hvRpQ-0006jC-55
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 15:42:32 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1565206910; cv=none; d=zohomail.eu; s=zohoarc; 
 b=Q7LH5Qs0cPHnCw0kCjQy5Ywti4LdDlmI+wRKkcWemEs24QOpXcMtNYWNgE1wwYyLsCgbzvV03tSF5hhw6b3jpPc71+SJhkgXDvgwdMqLA9Tq9wE+Y5DCOXe/e0ZcsN5LzQDc55qoKV4GzsAHc8bjilPEqw1NMgW0jYgsUNSOtQc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu;
 s=zohoarc; t=1565206910;
 h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=yTIvyMqrcHY61xGT5VS7LAwbWQVaZzR+pbrgTl6A3ZY=; 
 b=iqwwX0E3b9xTO+z99wSSdPf3zRIwUUYHCp7nAyxmpR7DAySDvYZtwgJcRT9e3XnEsuX1seFJeaIWbEarRca/TFS3T1INEZKiLBxUdR71Vs0MWJnUi9LvYiwcM6Lnq62Gwym16YxYasbe3NbPbZUjmFNhd9vmQF7bj3ZrBYY1I6E=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
 dkim=pass  header.i=wiosense.de;
 spf=pass  smtp.mailfrom=r.stoica@wiosense.de;
 dmarc=pass header.from=<r.stoica@wiosense.de>
 header.from=<r.stoica@wiosense.de>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1565206910; 
 s=zoho; d=wiosense.de; i=r.stoica@wiosense.de;
 h=Date:From:To:Message-Id:Subject:MIME-Version:Content-Type;
 l=2948; bh=yTIvyMqrcHY61xGT5VS7LAwbWQVaZzR+pbrgTl6A3ZY=;
 b=fNpe80Nb9g+89WaeoX1ZEvDUfGveiZwCx+f4ynb4lDCi7vteHhPxPxTgEXohfhkL
 Y7dD3sZuYVyj0is2DtrTHDzGnKk2Cmo5y2V1EAqqASW8f3Q9YbIIxTajrKEMjaEew+9
 T2uw4ELlDs9DHZmCRpzv4VaeDkPeJJ0WTzZWQdFA=
Received: from mail.zoho.eu by mx.zoho.eu
 with SMTP id 1565206909968739.4072684494804;
 Wed, 7 Aug 2019 21:41:49 +0200 (CEST)
Date: Wed, 07 Aug 2019 21:41:49 +0200
To: "usrp-users" <usrp-users@lists.ettus.com>
Message-Id: <16c6d9a140f.b4d0b90640043.7921529196409486820@wiosense.de>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: [USRP-users] USRP B210 FPGA Amplify-forward
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
From: Razvan-Andrei Stoica via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Razvan-Andrei Stoica <r.stoica@wiosense.de>
Content-Type: multipart/mixed; boundary="===============1269120376112711574=="
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

--===============1269120376112711574==
Content-Type: multipart/alternative; 
	boundary="----=_Part_115497_245031212.1565206909967"

------=_Part_115497_245031212.1565206909967
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello,



I am working with 2 B210 units trying to realize an out-of-band amplify-forward wideband relay.



The signal flow is simple and was already implemented using the GNURadio blocks and associated UHD USRP drivers.



The input signal is DCed to BB by one of the RF ends and additionally amplified if need be in SW. The output is then rerouted to the second RF end on a higher frequency then that of the output.



The second device performs the same operations but reconverts the relayed signal to the initial frequency band.



This works quite okay with the host processing and control over a BW of 22 Msps, with the occasional bursts of lost samples.



However, due to latency reasons and easier deployment I would like to understand if it is possible to implement this simple signal processing logic on the FPGA and flash this module such that it operates automatically upon the loading of the firmware.



Any advice or guides / tutorials on doing this would be greatly appreciated!



Best,

Andrei
------=_Part_115497_245031212.1565206909967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif=
; font-size: 10pt;"><div>Hello,<br></div><div><br></div><div>I am working w=
ith 2 B210 units trying to realize an out-of-band amplify-forward wideband =
relay.<br></div><div><br></div><div>The signal flow is simple and was alrea=
dy implemented using the GNURadio blocks and associated UHD USRP drivers.<b=
r></div><div><br></div><div>The input signal is DCed to BB by one of the RF=
 ends and additionally amplified if need be in SW. The output is then rerou=
ted to the second RF end on a higher frequency then that of the output.<br>=
</div><div><br></div><div>The second device performs the same operations bu=
t reconverts the relayed signal to the initial frequency band.<br></div><di=
v><br></div><div>This works quite okay with the host processing and control=
 over a BW of 22 Msps, with the occasional bursts of lost samples.<br></div=
><div><br></div><div>However, due to latency reasons and easier deployment =
I would like to understand if it is possible to implement this simple signa=
l processing logic on the FPGA and flash this module such that it operates =
automatically upon the loading of the firmware.<br></div><div><br></div><di=
v>Any advice or guides / tutorials on doing this would be greatly appreciat=
ed!<br></div><div><br></div><div>Best,<br></div><div>Andrei<br></div><div><=
br></div></div><br></body></html>
------=_Part_115497_245031212.1565206909967--




--===============1269120376112711574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1269120376112711574==--



