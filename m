Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C067B747D
	for <lists+usrp-users@lfdr.de>; Wed,  4 Oct 2023 01:06:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E8223857F8
	for <lists+usrp-users@lfdr.de>; Tue,  3 Oct 2023 19:05:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696374359; bh=0E3w2bD3YkeiGDUOgw5KWeZBXpoVdpx+tm8+D8q7q0s=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VqfkiVaFJqxKz3u5j33yPRAZ0ZFl7zMc1GuvvssCq+U2mCIkCYY2aSgSYpgDKKgba
	 7IuTvjB5Q+eSATUsGoDSHaiGnub2NsNbpGFILIvhKxyz7Ix0FWddA0xbPdXz0WILdM
	 9GxK3B+FUAZ4uN+nWui2Pmhno1cByA4grabSOVlg8A8Cpt2bf/pML6hEtnGG+4rPL8
	 b6saak0Jg1PKGykj4he6iNRjRKaoBy6QOiVc4tl6WQuU7wGLCeqHaIYVf9IpYJxRkW
	 Y0ldmYg3pi7mwZR1APbSabgFiKom374VQyn913LXonCu0cmE2he8BYntZHCHf8pX+P
	 QrM02u+bO7pEA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1691384A9B
	for <usrp-users@lists.ettus.com>; Tue,  3 Oct 2023 19:05:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696374303; bh=PVgKqjyOxKU712x+O17pmrMBQbHS9QImLRdWMj8qZG4=;
	h=Date:To:From:Subject:From;
	b=mATlO818xo2cIeYF05/WZjKq25rxrd3dpKmm6rg/RWddnVmDUZ68cUE/tDkxn/ycQ
	 zOIsAn2zetDYFle3+oi/WxzZFYzkJWI83PO484huAB6qhbHso0rr0NfkOJ4ShVgCIr
	 oz4nE7iOQA1qAHzsEIMrZubYAqDMFkyv8GPpSCWBYkfpRh8oa5FaECoOMRry3hV1AV
	 8zQuZ7jt89F5UQKXhkouBmAgW8pyiiA+mu2gWFY2ahYgTx7K6PFv8e/DEOUEjVLqzR
	 YulgnfsmWdhWgqRW8BnYpu+FdheUKUDndpcVsmDPph97LQs+8ww8ljmH8CvU0yCS9m
	 /Nc7vEPl4pyAQ==
Date: Tue, 3 Oct 2023 23:05:03 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7RXOLJWFUVIG5MILTFW2WYB6PMDUBHLR
X-Message-ID-Hash: 7RXOLJWFUVIG5MILTFW2WYB6PMDUBHLR
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFDC initialization in UHD 4.5.0.0 for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7RXOLJWFUVIG5MILTFW2WYB6PMDUBHLR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5740064110775503279=="

This is a multi-part message in MIME format.

--===============5740064110775503279==
Content-Type: multipart/alternative;
 boundary="b1_iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

\
Hello,\
My application requires that I edit the RFDC applications, however, I am =
confused about how the UHD C++ API interfaces with the RFDC on the RFSoC.=
\
It appears when I make the RFNoC graph, the namespace x400_radio_control_=
impl is called, which starts the process of programming the RFDC as well =
as running Self Calibration. For reference, I instantiate my graph simila=
r to the examples

\
`//Create RFNoC graph`\
`std::cout << std::endl;`\
`std::cout << "Creating the RFNoC graph with args: " << args << std::endl=
;`\
`auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);`\
`=E2=80=A6`\
`auto radio_rx_ctrl =3D graph->get_block<uhd::rfnoc::radio_control>(radio=
_rx_ctrl_id);`

\
I have been able to trace up to rfnoc_graph.cpp, where once a graph is co=
mmited, it starts to create an object for each NoC. Following the RFNOC l=
ogs that print after the UHD 4.5 update, I found where the log =E2=80=9C\=
[INFO\] \[0/Radio#0\] Calibrating channel 0=E2=80=9D came from, which was=
 found in x400_radio_control.cpp. So now, I am led to believe that whenev=
er the radio block is instantiated, the RFDC properties get instantiated =
as well.=20

\
After this part, is where my confusion starts=E2=80=A6\
After following the logs which appear right before the RFNoC logs regardi=
ng calibration, specifically

\
`[INFO] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:`\
`DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz`\
`DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz`=20

\
it seems there is a file x4xx_clock_mgr.py which supposedly sets the mast=
er clock rate and the converter rate, which is called by x4xx.py. x4xx.py=
 also calls another function in x4xx_clock_policy.py, which seems to be t=
he function of interest as it sets the properties on the RFDC, albeit har=
dcoded. The problem is I have not been able to trace how I get from x400_=
radio_control.cpp to x4xx.py.=20

\
In short, am I correct that there is a trace between x400_radio_control.c=
pp and x4xx.py trace, and if so, where in the UHD C++ API does it call a =
python file, specifically the x4xx.py?=20

\
Thanks\
Joe

--b1_iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br>Hello,<br>My application requires that I edit the RFDC applications,=
 however, I am confused about how the UHD C++ API interfaces with the RFDC =
on the RFSoC.<br>It appears when I make the RFNoC graph, the namespace x400=
_radio_control_impl is called, which starts the process of programming the =
RFDC as well as running Self Calibration. For reference, I instantiate my g=
raph similar to the examples</p><p><br><code>//Create RFNoC graph<br>std::c=
out &lt;&lt; std::endl;<br>std::cout &lt;&lt; "Creating the RFNoC graph wit=
h args: " &lt;&lt; args &lt;&lt; std::endl;<br>auto graph =3D uhd::rfnoc::r=
fnoc_graph::make(args);<br>=E2=80=A6<br>auto radio_rx_ctrl =3D graph-&gt;ge=
t_block&lt;uhd::rfnoc::radio_control&gt;(radio_rx_ctrl_id);</code></p><p><b=
r>I have been able to trace up to rfnoc_graph.cpp, where once a graph is co=
mmited, it starts to create an object for each NoC. Following the RFNOC log=
s that print after the UHD 4.5 update, I found where the log =E2=80=9C[INFO=
] [0/Radio#0] Calibrating channel 0=E2=80=9D came from, which was found in =
x400_radio_control.cpp. So now, I am led to believe that whenever the radio=
 block is instantiated, the RFDC properties get instantiated as well. </p><=
p><br>After this part, is where my confusion starts=E2=80=A6<br>After follo=
wing the logs which appear right before the RFNoC logs regarding calibratio=
n, specifically</p><p><br><code>[INFO] [MPM.PeriphManager.ClkMgr] Using Clo=
ck Configuration:<br>DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.=
94912 GHz<br>DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GH=
z</code> </p><p><br>it seems there is a file x4xx_clock_mgr.py which suppos=
edly sets the master clock rate and the converter rate, which is called by =
x4xx.py. x4xx.py also calls another function in x4xx_clock_policy.py, which=
 seems to be the function of interest as it sets the properties on the RFDC=
, albeit hardcoded. The problem is I have not been able to trace how I get =
from x400_radio_control.cpp to x4xx.py. </p><p><br>In short, am I correct t=
hat there is a trace between x400_radio_control.cpp and x4xx.py trace, and =
if so, where in the UHD C++ API does it call a python file, specifically th=
e x4xx.py? </p><p><br>Thanks<br>Joe<br><br><br></p>

--b1_iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk--

--===============5740064110775503279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5740064110775503279==--
