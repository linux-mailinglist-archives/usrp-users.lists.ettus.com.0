Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4248645C9F7
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 17:26:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26131384043
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 11:26:21 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0478383EEE
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 11:25:23 -0500 (EST)
Date: Wed, 24 Nov 2021 16:25:23 +0000
To: usrp-users@lists.ettus.com
From: emanuele.tolomei@intecs.it
Message-ID: <bnuPd0iZONKNjoNooNU7gGQ7BYbRA5HQ0NG8w0SMomk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e9181afd-84c5-1871-05fa-b3c45f04da5d@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7D4WIAJJAUQKVY7FTTWVNFSGL3GRP6V6
X-Message-ID-Hash: 7D4WIAJJAUQKVY7FTTWVNFSGL3GRP6V6
X-MailFrom: emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7D4WIAJJAUQKVY7FTTWVNFSGL3GRP6V6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1500206118636627519=="

This is a multi-part message in MIME format.

--===============1500206118636627519==
Content-Type: multipart/alternative;
 boundary="b1_bnuPd0iZONKNjoNooNU7gGQ7BYbRA5HQ0NG8w0SMomk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bnuPd0iZONKNjoNooNU7gGQ7BYbRA5HQ0NG8w0SMomk
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

as I said in the previous post I tried to do a get_time_now() just before the timed command, but without success.

  // Tune all channels to the desired frequency

  uhd::tune_result_t tune_resp = m_MultiUsrp->set_rx_freq(nRxFrequency,0);

  

  //set time on the master (mboard 0)

  struct timespec now;

  clock_gettime(CLOCK_REALTIME, &now);

  m_MultiUsrp->set_time_now(uhd::time_spec_t(now.tv_sec,(double)now.tv_nsec/1.0e6));

  uhd::time_spec_t usrp_time = m_MultiUsrp->get_time_now();

  m_MultiUsrp->set_rx_gain(nGain, 1);

  m_MultiUsrp->set_rx_gain(nGain, 2);

  m_MultiUsrp->set_rx_gain(nGain, 3);

  uhd::tune_request_t tune_req;

  tune_req.rf_freq = tune_resp.actual_rf_freq;

  tune_req.rf_freq_policy = uhd::tune_request_t::POLICY_MANUAL;

  tune_req.dsp_freq = tune_resp.actual_dsp_freq;

  tune_req.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;

  m_MultiUsrp->set_rx_freq(tune_req, 1);

  m_MultiUsrp->set_rx_freq(tune_req, 2);

  m_MultiUsrp->set_rx_freq(tune_req, 3);

  usrp_time = m_MultiUsrp->get_time_now() ;

  // Synchronize the tuned channels

  m_MultiUsrp->set_command_time(usrp_time + uhd::time_spec_t(0.1));

  m_MultiUsrp->set_rx_freq(tune_req, 0);

  m_MultiUsrp->set_rx_freq(tune_req, 1);

  m_MultiUsrp->set_rx_freq(tune_req, 2);

  m_MultiUsrp->set_rx_freq(tune_req, 3);

  m_MultiUsrp->clear_command_time();

Thank you.

--b1_bnuPd0iZONKNjoNooNU7gGQ7BYbRA5HQ0NG8w0SMomk
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>as I said in the previous post I tried to do a get_time=
_now() just before the timed command, but without success.</p><p>  // Tune =
all channels to the desired frequency</p><p>  uhd::tune_result_t tune_resp =
=3D m_MultiUsrp-&gt;set_rx_freq(nRxFrequency,0);</p><p>  </p><p>  //set tim=
e on the master (mboard 0)</p><p>  struct timespec now;</p><p>  clock_getti=
me(CLOCK_REALTIME, &amp;now);</p><p>  m_MultiUsrp-&gt;set_time_now(uhd::tim=
e_spec_t(now.tv_sec,(double)now.tv_nsec/1.0e6));</p><p>  uhd::time_spec_t u=
srp_time =3D m_MultiUsrp-&gt;get_time_now();</p><p>  m_MultiUsrp-&gt;set_rx=
_gain(nGain, 1);</p><p>  m_MultiUsrp-&gt;set_rx_gain(nGain, 2);</p><p>  m_M=
ultiUsrp-&gt;set_rx_gain(nGain, 3);</p><p>  uhd::tune_request_t tune_req;</=
p><p>  tune_req.rf_freq =3D tune_resp.actual_rf_freq;</p><p>  tune_req.rf_f=
req_policy =3D uhd::tune_request_t::POLICY_MANUAL;</p><p>  tune_req.dsp_fre=
q =3D tune_resp.actual_dsp_freq;</p><p>  tune_req.dsp_freq_policy =3D uhd::=
tune_request_t::POLICY_MANUAL;</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_req=
, 1);</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p><p>  m_MultiUsrp=
-&gt;set_rx_freq(tune_req, 3);</p><p>  usrp_time =3D m_MultiUsrp-&gt;get_ti=
me_now() ;</p><p>  // Synchronize the tuned channels</p><p>  m_MultiUsrp-&g=
t;set_command_time(usrp_time + uhd::time_spec_t(0.1));</p><p>  m_MultiUsrp-=
&gt;set_rx_freq(tune_req, 0);</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_req,=
 1);</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p><p>  m_MultiUsrp-=
&gt;set_rx_freq(tune_req, 3);</p><p>  m_MultiUsrp-&gt;clear_command_time();=
</p><p>Thank you.</p>

--b1_bnuPd0iZONKNjoNooNU7gGQ7BYbRA5HQ0NG8w0SMomk--

--===============1500206118636627519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1500206118636627519==--
