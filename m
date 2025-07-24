Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 856E4B109C0
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jul 2025 13:58:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A196D38560A
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jul 2025 07:58:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753358311; bh=g+pQrFdeg4QwDSSQRYtMQ2Yay4V8hjN/YurWUmKkEDI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WlC0TM+KjnDVp6DTFNkl7BwExjZeynQVeczTYX0tZbWgy7NXuTKf/8XdbMWWY9G5F
	 SUGdGUXcrRZtO3aO6vbxwsh7PMc+zXvxAOR8f52odcE4+Fw3p4KZXlcGnEnFJlTFyO
	 n/AGr9i0V8iTfoVgiHsG6NERL0ClmksCZ1h3Muj4EuHGpKEATYGXQ2WyUgTAnbH1N9
	 KDhIDGGAw1tEEuU4d3RtF1lOOUwTZll6KMXR+cZzB1L5rDQvDrznpYQU7Vio9BAZpe
	 fw0W23YduCDOeIDk4q2B54cDzqWwI98PXgjWkY0BGiBviqM4jNiQyaAtiLW7ZKTFlX
	 gIQu3Bfw/00/Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29450385570
	for <usrp-users@lists.ettus.com>; Thu, 24 Jul 2025 07:57:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753358261; bh=zyJjF+mPqkaUeHmUcbkVcbks4IvFFkUT43WEKe2rmC8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jQ6ZphzggHf6dKNxWTErV7zW9tDRUSh7WuXaZC8BVsFBNdf7E8qcphASYvD2SXOXI
	 KPO6kEuviAxWth3e1e8umLLW7EzsSr4ZerE8Ng1PoFEM8xvxRmPw8KLt0AUkOXODmf
	 4qyJ4m+KyEXZSYEcHoDJQFOHWhFmzjwN5ie8blGtgll1/pltk7I6uKa6g9dG1kVg53
	 NQh/iPOs+i0qXEbmEzy6uikzX0PtL6ozW5i/ZKonvw4FhynFBD8ZOtVCNosPtn0E4j
	 AvP9LwU3GMOCs6udxQ10MuemkvQeKhAWp7ND6C5YnmF7B+4vvWKNfrSAc4OAOlGIZI
	 o6e0voOjZQOWQ==
Date: Thu, 24 Jul 2025 11:57:41 +0000
To: usrp-users@lists.ettus.com
From: dennis.joosens@uantwerpen.be
Message-ID: <Yck7S3NRs3Ncj4QufALs1HuaBkyWBlXhouDgxByTsg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A6-3w_eEP15WV8jEhxsz9q8or06QZG5BxEaC5FGzP6=Wg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: MQGAT7OTAV6OZX6IIXDKAGSMOODZMIN5
X-Message-ID-Hash: MQGAT7OTAV6OZX6IIXDKAGSMOODZMIN5
X-MailFrom: dennis.joosens@uantwerpen.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power calibration USRP B210 UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MQGAT7OTAV6OZX6IIXDKAGSMOODZMIN5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4051680992792659247=="

This is a multi-part message in MIME format.

--===============4051680992792659247==
Content-Type: multipart/alternative;
 boundary="b1_Yck7S3NRs3Ncj4QufALs1HuaBkyWBlXhouDgxByTsg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Yck7S3NRs3Ncj4QufALs1HuaBkyWBlXhouDgxByTsg
Content-Type: text/plain; charset=us-ascii

Hi Martin,

Thanks for your swift answer!

I managed to get it working now. I share these few lines of code here as they may be a help for someone else.

I have to note that I focus on calibration on the receiving side of the B210s (RX/RX2). But I believe for TX calibration, changing some things from RX to TX in the functions will work too.

For now, there is no check whether the cal files exist, but based on the True/False flag of the has_rx_power_reference(), it is easily implemented if needed.

    print("> Searching for calibration files at: ",uhd.get_cal_data_path())

    print("> has_rx_power_reference?: ",usrp1.has_rx_power_reference())

    print("> get_usrp_rx_info: ",usrp1.get_usrp_rx_info(0)) 

   

    serial = usrp1.get_usrp_rx_info()\["rx_ref_power_serial"\]

    key = usrp1.get_usrp_rx_info()\["rx_ref_power_key"\]

    print(f"Using B210 with serial: {serial}")

    print(f"Using B210 with key: {key}")  

    print(uhd.usrp.cal.database.read_cal_data(key, serial))

--b1_Yck7S3NRs3Ncj4QufALs1HuaBkyWBlXhouDgxByTsg
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>Thanks for your swift answer!</p><p>I managed to get it=
 working now. I share these few lines of code here as they may be a help fo=
r someone else.</p><p>I have to note that I focus on calibration on the rec=
eiving side of the B210s (RX/RX2). But I believe for TX calibration, changi=
ng some things from RX to TX in the functions will work too.</p><p>For now,=
 there is no check whether the cal files exist, but based on the True/False=
 flag of the has_rx_power_reference(), it is easily implemented if needed.<=
/p><p><br></p><p>    print("&gt; Searching for calibration files at: ",uhd.=
get_cal_data_path())</p><p>    print("&gt; has_rx_power_reference?: ",usrp1=
.has_rx_power_reference())</p><p>    print("&gt; get_usrp_rx_info: ",usrp1.=
get_usrp_rx_info(0)) </p><p>   </p><p>    serial =3D usrp1.get_usrp_rx_info=
()["rx_ref_power_serial"]</p><p>    key =3D usrp1.get_usrp_rx_info()["rx_re=
f_power_key"]</p><p>    print(f"Using B210 with serial: {serial}")</p><p>  =
  print(f"Using B210 with key: {key}")  </p><p>    print(uhd.usrp.cal.datab=
ase.read_cal_data(key, serial))</p>

--b1_Yck7S3NRs3Ncj4QufALs1HuaBkyWBlXhouDgxByTsg--

--===============4051680992792659247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4051680992792659247==--
