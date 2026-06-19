Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lWTuAlf2NGp/lQYAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2026 09:57:11 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 173666A4792
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2026 09:57:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=r9O8UaM4;
	dkim=fail ("body hash did not verify") header.d=emwd.com header.s=harmony header.b="REcxX/WY";
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A68AF386400
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2026 03:57:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781855828; bh=Z/5JirlYL6z6vLLdoj/4KxK3bJ8+D+ryHNRDW7a+1to=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=r9O8UaM4WWBW7UwdTooR42W2rNSyF0XfbW5FuLgoL9zQrIuO/hqD9SGO5J6qfq3vk
	 1+/tEapGqkPiloUYe9WJH+imgEGxfN2RkxT8rPUFpFWlobd8Cf2C8G4RmskugTy0NW
	 VUNqnoBlZGXN6IATS1YSScRtCjuq7GpbdiXuetcJkRhsdolV/79XVSubVqw5Kn8sgD
	 loiT71/iejNn1TXMcFNxnQqbIw+JrmmhEQh0B0Qr8ubRIfqhCWy4asP7KtEeQnfAtF
	 RmeDIcvXIWkp8c133k2I+8vnoZclna10A6v9JH/7kYypC8sQ8UEV0ntfyGu1pfjhd+
	 cGqY2PTnOXe6w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9482E3863C6
	for <usrp-users@lists.ettus.com>; Fri, 19 Jun 2026 03:57:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781855822; bh=wlUTdrsIOwhWqdpWectR+TUPqdL1wutZqtqK9pOg/VA=;
	h=Date:To:From:Subject:From;
	b=REcxX/WYeq0aGHgDeMMnZTeZhaw9FBYU4CbyGN5bhij0VHxftSCAeYFlVHtZwBJyH
	 iQU1cijxu/yWF1Xfnx3WON75wq6gtZNoNtCQnEP+IHMDz+k4gJHu7IUzOOD23Jfj98
	 UNkKT2dujeBqRi/VuLnu7v3u6crykzOqPqum7IrzALMTR+dfuxfeTChfHoZZBQM6Wp
	 Q8yFMvm0tVmcjm/Y1hV9dS6NaVmoZfEngPPuRgOCCPwz9xngcvaxrLdTuDSHSYaqnz
	 4JGn+oMcIE5a7sv2GPOdYTktLp5+UImXhntU/ua7afWgjcCQLaHWb3FRpjkO9ZdN3i
	 yOZp1ZKMWXOfw==
Date: Fri, 19 Jun 2026 07:57:02 +0000
To: usrp-users@lists.ettus.com
Message-ID: <EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 65EIXNP6VWCQHKJPZZ2PGIEOL566ZKZT
X-Message-ID-Hash: 65EIXNP6VWCQHKJPZZ2PGIEOL566ZKZT
X-MailFrom: rfserranor@indra.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] I could not achieve high time resolutions when transmit or receive in x440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/65EIXNP6VWCQHKJPZZ2PGIEOL566ZKZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Rub=C3=A9n_Serrano_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: rfserranor@indra.es
Content-Type: multipart/mixed; boundary="===============1602962762168730318=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rfserranor@indra.es];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,lists.ettus.com:from_smtp,lists.ettus.com:mid,lists.ettus.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 173666A4792

This is a multi-part message in MIME format.

--===============1602962762168730318==
Content-Type: multipart/alternative;
 boundary="b1_EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw
Content-Type: text/plain; charset=us-ascii

Hi everyone,

I am currently using two Ettus x440 devices. To develop my application correctly I need to send and receive two signals between them (each device has to implement one transmitter and one receiver). This signal exchange must occur on different time. The thing is that, this time mismatching, must occur in short times, in order of nanoseconds, so I need to control the "sender" and "receiver" objects with high time resolutions. The code related to what I am saying is the following one:

// in the receiver this is the command which controls the time where the receiver is began to listen

                    *stream_cmd.time_spec = timeInit+uhd::time_spec_t(ATdma);*    

// in the transmitter this is the command which controls the time where the transmitter is began to send the signal buffered

                    *md.time_spec = timeInit+uhd::time_spec_t(ATdma);*

// with timeInit = usrp->uhd::get_time_now()+uhd::time_spec_t(0.25) & ATdma = double(1e-7)

My questions here are the following:

 1 - When ATdma is lower than tenths-hundreds of microseconds, the time controlled by the previous lines are changed to zero, so there is no displacement between simples. Does uhd::time_spec_t has no the enough resolution to represent this kind of decimals? Or maybe is the hardware which does not support this kind of resolutions?

 2 - If it is a negative answer on 1st questions, maybe the problem could be given by the data type (double)? I do not think that the problem could be given by the data type, because this kind of data use floated point for the number representation, but maybe I am wrong.

 3 - If none of those question is the problem, could I use "to_tick"/"from_tick" functions to achieve those resolutions? I tried to do this, but I do not know how, if time_pect_t variable always set the time with a integer part and a fractional part, and tick functions only gives integers, right?

Thank you all for read/respond to my questions. I hope I would have explained my self on a properly manner.

--b1_EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p>I am currently using two Ettus x440 devices. To devel=
op my application correctly I need to send and receive two signals between =
them (each device has to implement one transmitter and one receiver). This =
signal exchange must occur on different time. The thing is that, this time =
mismatching, must occur in short times, in order of nanoseconds, so I need =
to control the "sender" and "receiver" objects with high time resolutions. =
The code related to what I am saying is the following one:</p><p>// in the =
receiver this is the command which controls the time where the receiver is =
began to listen</p><p>                    <em>stream_cmd.time_spec =3D time=
Init+uhd::time_spec_t(ATdma);</em>    </p><p>// in the transmitter this is =
the command which controls the time where the transmitter is began to send =
the signal buffered</p><p>                    <em>md.time_spec =3D timeInit=
+uhd::time_spec_t(ATdma);</em></p><p>// with timeInit =3D usrp-&gt;uhd::get=
_time_now()+uhd::time_spec_t(0.25) &amp; ATdma =3D double(1e-7)</p><p>My qu=
estions here are the following:</p><p> 1 - When ATdma is lower than tenths-=
hundreds of microseconds, the time controlled by the previous lines are cha=
nged to zero, so there is no displacement between simples. Does uhd::time_s=
pec_t has no the enough resolution to represent this kind of decimals? Or m=
aybe is the hardware which does not support this kind of resolutions?</p><p=
> 2 - If it is a negative answer on 1st questions, maybe the problem could =
be given by the data type (double)? I do not think that the problem could b=
e given by the data type, because this kind of data use floated point for t=
he number representation, but maybe I am wrong.</p><p> 3 - If none of those=
 question is the problem, could I use "to_tick"/"from_tick" functions to ac=
hieve those resolutions? I tried to do this, but I do not know how, if time=
_pect_t variable always set the time with a integer part and a fractional p=
art, and tick functions only gives integers, right?</p><p>Thank you all for=
 read/respond to my questions. I hope I would have explained my self on a p=
roperly manner.</p>

--b1_EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw--

--===============1602962762168730318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1602962762168730318==--
