Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB008C546
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 02:49:55 +0200 (CEST)
Received: from [::1] (port=47766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxhU8-0004lQ-Ud; Tue, 13 Aug 2019 20:49:52 -0400
Received: from sonic317-24.consmr.mail.gq1.yahoo.com ([98.137.66.150]:36524)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hxhU5-0004fY-JG
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 20:49:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1565743748; bh=GXrT2Cz1f8GcoyHC6vuFOA5kkX3/62NPKn/ZdxP2BXI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject;
 b=D1s+gQJvPDOsFjrfS7nfbSgi+RvPsXg8IXmJL1qREEquCwo/Yf0dTQ0mzwPmY70Rxms+tTHGlk+CwSxyBkW+YrrFC3mXkZodwXfr7mRbsThWQ+JM6rE5Klo+/vnIZSRuHtiLi8HIClrlKVC1yLcMMSbmvKECyQvuG7kAovecRjHtcKX2z16Z+ACWwK2WXXwv4Ly2MXPTi80BB3p4+GNrz8cDuTMDBlaoVOJ66E+2+sEJ/yhtQHZRyacHkBTWoIo4CcJjsscp6JtizpoBUP/MbK7IZP/BjxCdwciQxBpGscgvG46BkVaa8rc6KFQdsBHrttSFqhR1edYXA2W4sqPNuQ==
X-YMail-OSG: BQPGfPEVM1lrxksQFvxFXIZXv79PdlL7NPN8pfXaqB4n05fBxr3DCbCZVcDtpNV
 APeqtqRmGRBlKexBXr3nAHKOFIWyNS3qEq2rCWy4tIyAnrf3Mbl7uicHG_cl8Cepv7_h_4qMIUiF
 BgQlHeBfPMFkJl5dxqdYb7kUBiLuwcca.KyFDrYUw8PGjyZvVdBycLkYgHypflla67kG9trpkdar
 hfkzyZuqyWWWopcl52W3.kCy25fQmoCtMIkDDXZk0qiMxq.flBFHHD3yjy10HPPuHblKgyv..Plc
 lemNs06jBpNfHVI0VF.fM0qwPh.wk8I30NsBktEKjGySanH7DrxsZRyPmfdC3uGkpsiRuML33Sg9
 yBT4OOyYHnqOX.wAvJa77eJqUXdS8CWKq.6mkK5RSRf6QALVGDq6PNvB9EapRcSpzZvX97vhutIK
 1Guwh86lyDOuXPpEQ_uWPm1yfdCbMaPHoKdvh7_qTBN7m1OAXwMKQB8Shx0D2Jm2ZNTkwqLE0B3a
 4QNvfHShS22xZ6yfLNRAULSqJlGLt4VAS8O0dfyg8KgOU98nth0Xz3MOdZI.odH0ZKk7ZLe2sjae
 SfJF77dUbog6jSkK9tHUspFS9R8eUbt5PUZdKvhd8eXneKCvkk5sG9FPDk.KKQUmQRVY_Mw988_J
 Jn1ht70f_giv2V4coTOoefEA6_q4zaPKo2qaewCI3SeWmEVFq_JZ5l0xua_t0CbxN0EnMwO8S__5
 cdPfmjH4IYVVRZS7Ar54k_c_EdBijajTuALKjOC3a3Gpoz3ykVICCbZuKWbX5ZiekazaNfHDkKhf
 d.kv3MSmp4_4kIJiONJ8RAJGfxuDEko0WUhVU3OGuPnMZAYXnpMcB7XQWGL8nUg7IUt88piGiUtC
 DWb064ZcrnbKBbyorXkq6CL_ItladWPa0sbHoiDuh8sGABi3OGb8xfEvT_w9UGaSxxRDqHzaRNnP
 u54i5WQgSnjrkbUXCH0JM0WCKoFUb.aLS9DawWJVmteat.yabelrLd5Pz05P5ye35XGzj49zQYtH
 GS2_hWjR_YatWl55vNOZ2hpIWkrAV4oORNC_6SvxJR1hZYGmjsrrR.47DETOfRNPpUXqC27ApkQ0
 6xlHQCz.16u.n4sGxUnE14oAuauhCLrBkN1tA3ETzh7sHL6kTrsXSvzL_wSu6yH92rEYwVeq_dq1
 Okizcsp6RA9JoSN2CZfY5QxQi.Isw9gZ.iux0vbEvYmfARomf4JqbnN4XHh3Jq8phU0JvfL.pPKj
 DdQ1cFEx5QOhX8HA-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.gq1.yahoo.com with HTTP; Wed, 14 Aug 2019 00:49:08 +0000
Received: by smtp430.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 33ad10ee1d20299de290057bd9dd5d37; 
 Wed, 14 Aug 2019 00:49:06 +0000 (UTC)
Message-ID: <5ad7e92d9241c123d59d91b74292019af62cf0fb.camel@sbcglobal.net>
To: Nate Temple <nate.temple@ettus.com>
Date: Tue, 13 Aug 2019 19:49:04 -0500
In-Reply-To: <CAL263iw0v2-_Uy9Uqjr4pb-QRE-qX1jBY48L-XbrWLdQG9Uhqg@mail.gmail.com>
References: <9c438e67931ecb2c6593803efda75c53ac53bef6.camel@sbcglobal.net>
 <CAL263iw0v2-_Uy9Uqjr4pb-QRE-qX1jBY48L-XbrWLdQG9Uhqg@mail.gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] latest E310 tutorial
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

There were no issues with the siggen example, I meant to paste in the
name of the host fosphor python program and grabbed the wrong name --
sorry!. Your changes to both parts of fosphor look right. I used
fosphor a bunch today, it really is a very useful program.

Speaking of gr-ettus and siggen, I applied part of the API puncturing
outlined in https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopback/
to make the siggen example a lot more useful by feeding it straight to the radio (and then looked at the signal with another radio using fosphor, and another radio using my home-brew block). Since you've cracked open gr-ettus anyway, is there any reason to not include the 

virtual void set_tx_streamer(bool active, const size_t port)
virtual void set_rx_streamer(bool active, const size_t port)
virtual void issue_stream_cmd(const uhd::stream_cmd_t &cmd, const
size_t chan=0)

API additions to the baseline gr-ettus? They don't seem to break
anything else and they make the E310 a lot more useful on the transmit
side. If just wish I could figure out a way to get gnuradio-companion
to add the 

self.uhd_rfnoc_streamer_radio_0.set_tx_streamer(True, chan)

line to the generated python so I wouldn't have to re-add it every time
I mess with the GUI version.


Thanks again,
Dave

On Tue, 2019-08-13 at 16:42 -0700, Nate Temple wrote:
> Hi,
> 
> We've pushed updated flowgraphs into gr-ettus for the networked
> fosphor example to fix the FIFO select and QT display issues. There
> is a few more minor things fixed in them but can you please give them
> and try on your system? I will try to replicate the siggen issue you
> ran into.
> 
> 
> Regards,
> Nate Temple
> 
> On Sun, Aug 11, 2019 at 1:38 PM d.des via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> > Thanks, Royce, that fixed the usrp side of both fosphor and my
> > block!
> > 
> > I also made two minor tweaks to the host side to get fosphor
> > working on
> > my PC. These are probably things that a Gnuradio expert would see
> > right
> > away but in case there's anyone else out there who primarily uses
> > the
> > c++ uhd interface and is barely Gnuradio literate here goes:
> > 
> > The first problem was a segfault whenever the host side program
> > rfnoc_siggen_network_host.py was launched. That turned out to be a
> > problem with fosphor_display_impl.cc. The method
> > "bool fosphor_display_impl::start()" ended without returning
> > anything
> > and my Fedora 30 machine really hated that. I put in a "return
> > true"
> > line at the end of the function and that fixed the problem. (It
> > doesn't
> > seem to matter whether the function returns true or false, it just
> > needs to return something.)
> > 
> > The second issue with the examples in stock form was that when I
> > opened
> > rfnoc_fosphor_network_host at first all I saw were controls, no
> > plot. I
> > spent some time looking for QT issues but it turned out to be
> > really
> > simple: there were GUI hints set on the slider controls but not on
> > on
> > the fosphor display block. The quickest fix is to remove the hints
> > on
> > the controls and the display shows up.
> > 
> > Fosphor is a really nice quick survey tool. It's great to see 56
> > MHz at
> > once with just a laptop and battery-powered E310.
> > 
> > 
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
