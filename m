Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D22C737F494
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 10:59:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D2D2384173
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 04:59:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="qMg04SOU";
	dkim-atps=neutral
Received: from www.itsystems.it (www.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D804383FBB
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 04:58:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5tEFBMacgFUsjiVoyiQInppc5MINoL6VHE6X30DDmbM=; b=qMg04SOU904A4R8THnhtX1RTUm
	C1N3Jo0PFyx0wCScvQv/I9SSOLb5taW9f6PaSmPhd+Cv3lCWtgnqB7Zh36AwnnE7oPB1bEF6dMPMC
	J/txT5OkBv11t/adWTTjlXbqNF9JtnTOUetPTqZHikWaZPeXEl9Uj8S1Ey6vajxvQbyM=;
Received: from 77-32-2-68.dyn.eolo.it ([77.32.2.68] helo=[192.168.178.108])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1lh7AS-0000OQ-J7
	for usrp-users@lists.ettus.com; Thu, 13 May 2021 08:58:08 +0000
To: usrp-users@lists.ettus.com
References: <CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmail.com>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <01d027e7-c3a3-d8e1-c4a0-fe85173e87e2@itsystems.it>
Date: Thu, 13 May 2021 10:58:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: =?unknown-8bit?q?Spam_detection_software=2C_running_on_the_system_=22v-mx=2Evirt=2Eitsystems=2Eit=22=2C?=
 =?unknown-8bit?q?_has_NOT_identified_this_incoming_email_as_spam=2E__The_original?=
 =?unknown-8bit?q?_message_has_been_attached_to_this_so_you_can_view_it_or_label?=
 =?unknown-8bit?q?_similar_future_email=2E__If_you_have_any_questions=2C_see?=
 =?unknown-8bit?q?_the_administrator_of_that_system_for_details=2E?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_Content_preview=3A__Hi_Maria=2C_In_your_message_you_do_not_specify_what_kind_of?=
 =?unknown-8bit?q?_device_you_have=2E=C2=A0_What_I_am_bout_to_say_is_referencing_to_an_X310_device=2E?=
 =?unknown-8bit?q?_The_theoretical_throughput_between_RFNoc_Blocks_in_this_device=2C_if_I_am_not?=
 =?unknown-8bit?q?_very_much_mistaken=2C_should_be_determined_by_the_ce=5Fclk_frequency=2E_If_you?=
 =?unknown-8bit?q?_look_inside_x300=2Ev_you_can_see_that_the_ce=5Fclk_is_2_=5B=2E=2E=2E=5D_?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_Content_analysis_details=3A___=28-2=2E9_points=2C_5=2E0_required=29?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_pts_rule_name______________description?=
 =?unknown-8bit?q?_----_----------------------_--------------------------------------------------?=
 =?unknown-8bit?q?_0=2E0_NO=5FDNS=5FFOR=5FFROM________DNS=3A_Envelope_sender_has_no_MX_or_A_DNS_records?=
 =?unknown-8bit?q?_-1=2E0_ALL=5FTRUSTED____________Passed_through_trusted_hosts_only_via_SMTP?=
 =?unknown-8bit?q?_-1=2E9_BAYES=5F00_______________BODY=3A_Bayes_spam_probability_is_0_to_1=25?=
 =?unknown-8bit?q?_=5Bscore=3A_0=2E0000=5D?=
 =?unknown-8bit?q?_0=2E0_TVD=5FRCVD=5FIP____________Message_was_received_from_an_IP_address?=
 =?unknown-8bit?q?_0=2E0_HTML=5FMESSAGE___________BODY=3A_HTML_included_in_message?=
 =?unknown-8bit?q?_-0=2E0_NICE=5FREPLY=5FA___________Looks_like_a_legit_reply_=28A=29?=
Message-ID-Hash: 4GN2NNJ2W6BWEPDM6HDIZRDWUK7RHZXK
X-Message-ID-Hash: 4GN2NNJ2W6BWEPDM6HDIZRDWUK7RHZXK
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Size throughput in RFNoC (FPGA side)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4GN2NNJ2W6BWEPDM6HDIZRDWUK7RHZXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4609562952700379192=="

This is a multi-part message in MIME format.
--===============4609562952700379192==
Content-Type: multipart/alternative;
 boundary="------------867E7E469E0657858671116C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------867E7E469E0657858671116C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Maria,

In your message you do not specify what kind of device you have.=C2=A0 Wh=
at I
am bout to say is referencing to an X310 device.

The theoretical throughput between RFNoc Blocks in this device, if I am
not very much mistaken, should be determined by the ce_clk frequency. If
you look inside x300.v you can see that the ce_clk is 214.286 MHz, so
you should be able to reach a theoretical throughput 214 Msps between
nocblocks. I think, but I not shure because I never tried it, that this
throughput is per nocblock port, so if you have a=C2=A0 nocblock with 2 p=
orts
you should be able to reach the theoretical throughput of 214*2 Msps.

Have a good day

Paolo

On 5/13/21 10:28 AM, Maria Mu=C3=B1oz wrote:
> Hi all,
>
> I'm=C2=A0trying to size/calculate the throughput between RFNoC blocks f=
rom
> the FPGA side (not between arm/host pc and RFNoC block, which I think
> is the one the interface measure when performing uhd_usrp_probe). Is
> there a process or an existing tool to measure this throughput?
>
> Kind Regards,
>
> Maria=C2=A0
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com



--------------867E7E469E0657858671116C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Hi Maria,</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">In your message you do not specify wha=
t
      kind of device you have.=C2=A0 What I am bout to say is referencing=
 to
      an X310 device.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">The theoretical throughput between
      RFNoc Blocks in this device, if I am not very much mistaken,
      should be determined by the ce_clk frequency. If you look inside
      x300.v you can see that the ce_clk is 214.286 MHz, so you should
      be able to reach a theoretical throughput 214 Msps between
      nocblocks. I think, but I not shure because I never tried it, that
      this throughput is per nocblock port, so if you have a=C2=A0 nocblo=
ck
      with 2 ports you should be able to reach the theoretical
      throughput of 214*2 Msps.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Have a good day</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Paolo<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 5/13/21 10:28 AM, Maria Mu=C3=B1oz =
wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi all,<br>
        <div><br>
        </div>
        <div>I'm=C2=A0trying to size/calculate the throughput between RFN=
oC
          blocks from the FPGA side (not between arm/host pc and RFNoC
          block, which I think is the one the interface measure when
          performing uhd_usrp_probe). Is there a process or an existing
          tool to measure this throughput?</div>
        <div><br>
        </div>
        <div>Kind Regards,</div>
        <div><br>
        </div>
        <div>Maria=C2=A0</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------867E7E469E0657858671116C--

--===============4609562952700379192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4609562952700379192==--
