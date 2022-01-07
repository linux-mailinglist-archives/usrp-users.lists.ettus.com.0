Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A7B48748E
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 10:14:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3951385621
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 04:14:23 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60E723852A0
	for <usrp-users@lists.ettus.com>; Fri,  7 Jan 2022 04:13:23 -0500 (EST)
Date: Fri, 7 Jan 2022 09:13:23 +0000
To: usrp-users@lists.ettus.com
Message-ID: <DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7JOZ35AV7K7D77HUNN6GKKFKSOUR2FSC
X-Message-ID-Hash: 7JOZ35AV7K7D77HUNN6GKKFKSOUR2FSC
X-MailFrom: mobizmn@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 device IOError: Could not find path for image: usrp_b200_fw.hex
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7JOZ35AV7K7D77HUNN6GKKFKSOUR2FSC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mobizmn--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mobizmn@yahoo.com
Content-Type: multipart/mixed; boundary="===============2979480666582141441=="

This is a multi-part message in MIME format.

--===============2979480666582141441==
Content-Type: multipart/alternative;
 boundary="b1_DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am trying to run the tx_timed_sample example of UHD with USRP B210. Whe=
n I run uhd_find_devices or uhd_usrp_probe, the USRP device is detected c=
orrectly and the details are shown correctly. But when I try to run the c=
ode by `./tx_timed_samples, `I get the following error:

`[WARNING] [B200] EnvironmentError: IOError: Could not find path for imag=
e: usrp_b200_fw.hex`

`Using images directory: <no images directory located>`

`Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow th=
e below instructions to download the images package.`

`Please run:`

` "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"`

But if I run the python examples, they work perfectly fine. The file =E2=80=
=9C`uhd_images_downloader.py`=E2=80=9C is not actually location on the ad=
dress specified in the above error.=20

I tried the solution [here](https://blog.actorsfit.com/a?ID=3D01550-735cb=
626-f122-4f20-941b-ad1ad9280ba6) and ran sudo cp -r /usr/local/share/uhd/=
images /usr/share/uhd, but the problem was still not resolved.

On [this](https://github.com/EttusResearch/uhd/issues/43) page, they sugg=
ested to do this:=20

**`export UHD_IMAGES_DIR=3D/usr/local/share/uhd/images`**

But that also did not work for me.

Can anybody help me with how I can locate the image directory?

--b1_DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I am trying to run the tx_timed_sample example of UHD with USRP B210. Wh=
en I run uhd_find_devices or uhd_usrp_probe, the USRP device is detected co=
rrectly and the details are shown correctly. But when I try to run the code=
 by <code>./tx_timed_samples, </code>I get the following error:</p><p><code=
>[WARNING] [B200] EnvironmentError: IOError: Could not find path for image:=
 usrp_b200_fw.hex</code></p><p><code>Using images directory: &lt;no images =
directory located&gt;</code></p><p><code>Set the environment variable 'UHD_=
IMAGES_DIR' appropriately or follow the below instructions to download the =
images package.</code></p><p><code>Please run:</code></p><p><code> "/usr/li=
b/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"</code></p><p>But if =
I run the python examples, they work perfectly fine. The file =E2=80=9C<cod=
e>uhd_images_downloader.py</code>=E2=80=9C is not actually location on the =
address specified in the above error. </p><p><br></p><p>I tried the solutio=
n <a href=3D"https://blog.actorsfit.com/a?ID=3D01550-735cb626-f122-4f20-941=
b-ad1ad9280ba6" title=3D"">here</a> and ran sudo cp -r /usr/local/share/uhd=
/images /usr/share/uhd, but the problem was still not resolved.</p><p><br><=
/p><p>On <a href=3D"https://github.com/EttusResearch/uhd/issues/43" title=
=3D"">this</a> page, they suggested to do this: </p><p><strong><code>export=
 UHD_IMAGES_DIR=3D/usr/local/share/uhd/images</code></strong></p><p>But tha=
t also did not work for me.</p><p><br></p><p>Can anybody help me with how I=
 can locate the image directory?</p>

--b1_DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM--

--===============2979480666582141441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2979480666582141441==--
