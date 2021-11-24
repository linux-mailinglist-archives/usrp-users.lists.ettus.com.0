Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F32A45CB5E
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 18:48:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67E8E3845C1
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 12:48:47 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 053E93840AD
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 12:47:52 -0500 (EST)
Date: Wed, 24 Nov 2021 17:47:52 +0000
To: usrp-users@lists.ettus.com
From: emanuele.tolomei@intecs.it
Message-ID: <y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQDYE_AFYTTc1Nhk7+MXmj1FGo1WsAnTTaQ3x-ZsunCbA@mail.gmail.com
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0"
Content-Transfer-Encoding: 7bit
Message-ID-Hash: ELPUUV5ROJXOKMSVPSSOSYOQBQZAWIDG
X-Message-ID-Hash: ELPUUV5ROJXOKMSVPSSOSYOQBQZAWIDG
X-MailFrom: emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ELPUUV5ROJXOKMSVPSSOSYOQBQZAWIDG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.

--b1_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0
Content-Type: multipart/alternative;
 boundary="b2_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0"

--b2_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0
Content-Type: text/plain; charset=us-ascii

> It was not clear to me from your email if using a time setting of zero will \
> solve the issue. It seemed that you still have a phase issue in this case?

Yes. If we use a time setting of zero, the application runs smoothly without crashes, but there is an unpredictable phase shift between the channels.

Our problem occurs only when the tuning and synchronization instructions are repeated in a loop, even if tuning always at the same frequency. Instead, if we tune and synchronize the channels only once, such as in the attached snippet (a modified version of the rx_multi_samples UHD example), everything runs smooth and the phase shift between the channels is coherent each time we start the application. As you can see, in the attached code the set_time_now(uhd::time_spec_t(0.0)) command is never called, and if we add that command the phase shifts between the channels change at every run. In our application, however, removing this command leads the aforementioned crashes.

> That is, the FPGA \
> time reference can be zero and the CPU time reference can be system-time \
> and whenever you need a time from the FPGA you can apply the appropriate \
> reference in the CPU.

What do you mean with CPU time reference? In our application the system-time is the host CPU time.

Emanuele Tolomei

Rob Kossler wrote:

> Hi Emanuele,
> I have never tried to use set_time_now() with anything other than zero as
> the time setting. Of course, this does not mean that it is impossible. But,
> I am wondering if your application can work just as easily by always
> translating the time on the CPU rather than in the FPGA.  That is, the FPGA
> time reference can be zero and the CPU time reference can be system-time
> and whenever you need a time from the FPGA you can apply the appropriate
> reference in the CPU.
>
> It was not clear to me from your email if using a time setting of zero will
> solve the issue.  It seemed that you still have a phase issue in this case?
> Rob
>
> On Wed, Nov 24, 2021 at 11:25 AM [emanuele.tolomei@intecs.it](mailto:emanuele.tolomei@intecs.it) wrote:
>
> > Hi Marcus,
> >
> > as I said in the previous post I tried to do a get_time_now() just before
> > the timed command, but without success.
> >
> > // Tune all channels to the desired frequency
> >
> > uhd::tune_result_t tune_resp = m_MultiUsrp->set_rx_freq(nRxFrequency,0);
> >
> > //set time on the master (mboard 0)
> >
> > struct timespec now;
> >
> > clock_gettime(CLOCK_REALTIME, &now);
> >
> > m_MultiUsrp->set_time_now(uhd::time_spec_t(now.tv_sec,(double)now.tv_nsec/1.0e6));
> >
> > uhd::time_spec_t usrp_time = m_MultiUsrp->get_time_now();
> >
> > m_MultiUsrp->set_rx_gain(nGain, 1);
> >
> > m_MultiUsrp->set_rx_gain(nGain, 2);
> >
> > m_MultiUsrp->set_rx_gain(nGain, 3);
> >
> > uhd::tune_request_t tune_req;
> >
> > tune_req.rf_freq = tune_resp.actual_rf_freq;
> >
> > tune_req.rf_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
> >
> > tune_req.dsp_freq = tune_resp.actual_dsp_freq;
> >
> > tune_req.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
> >
> > m_MultiUsrp->set_rx_freq(tune_req, 1);
> >
> > m_MultiUsrp->set_rx_freq(tune_req, 2);
> >
> > m_MultiUsrp->set_rx_freq(tune_req, 3);
> >
> > usrp_time = m_MultiUsrp->get_time_now() ;
> >
> > // Synchronize the tuned channels
> >
> > m_MultiUsrp->set_command_time(usrp_time + uhd::time_spec_t(0.1));
> >
> > m_MultiUsrp->set_rx_freq(tune_req, 0);
> >
> > m_MultiUsrp->set_rx_freq(tune_req, 1);
> >
> > m_MultiUsrp->set_rx_freq(tune_req, 2);
> >
> > m_MultiUsrp->set_rx_freq(tune_req, 3);
> >
> > m_MultiUsrp->clear_command_time();
> >
> > Thank you.
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b2_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<blockquote><p>It was not clear to me from your email if using a time setti=
ng of zero will <br>solve the issue. It seemed that you still have a phase =
issue in this case?</p></blockquote><p>Yes. If we use a time setting of zer=
o, the application runs smoothly without crashes, but there is an unpredict=
able phase shift between the channels.</p><p>Our problem occurs only when t=
he tuning and synchronization instructions are repeated in a loop, even if =
tuning always at the same frequency. Instead, if we tune and synchronize th=
e channels only once, such as in the attached snippet (a modified version o=
f the rx_multi_samples UHD example), everything runs smooth and the phase s=
hift between the channels is coherent each time we start the application. A=
s you can see, in the attached code the set_time_now(uhd::time_spec_t(0.0))=
 command is never called, and if we add that command the phase shifts betwe=
en the channels change at every run. In our application, however, removing =
this command leads the aforementioned crashes.</p><blockquote><p>That is, t=
he FPGA <br>time reference can be zero and the CPU time reference can be sy=
stem-time <br>and whenever you need a time from the FPGA you can apply the =
appropriate <br>reference in the CPU.</p></blockquote><p>What do you mean w=
ith CPU time reference? In our application the system-time is the host CPU =
time.</p><p>Emanuele Tolomei</p><p>Rob Kossler wrote:</p><blockquote><p>Hi =
Emanuele,
I have never tried to use set_time_now() with anything other than zero as
the time setting. Of course, this does not mean that it is impossible. But,
I am wondering if your application can work just as easily by always
translating the time on the CPU rather than in the FPGA.  That is, the FPGA
time reference can be zero and the CPU time reference can be system-time
and whenever you need a time from the FPGA you can apply the appropriate
reference in the CPU.</p><p>It was not clear to me from your email if using=
 a time setting of zero will
solve the issue.  It seemed that you still have a phase issue in this case?
Rob</p><p>On Wed, Nov 24, 2021 at 11:25 AM <a href=3D"mailto:emanuele.tolom=
ei@intecs.it">emanuele.tolomei@intecs.it</a> wrote:</p><blockquote><p>Hi Ma=
rcus,</p><p>as I said in the previous post I tried to do a get_time_now() j=
ust before
the timed command, but without success.</p><p>// Tune all channels to the d=
esired frequency</p><p>uhd::tune_result_t tune_resp =3D m_MultiUsrp-&gt;set=
_rx_freq(nRxFrequency,0);</p><p>//set time on the master (mboard 0)</p><p>s=
truct timespec now;</p><p>clock_gettime(CLOCK_REALTIME, &amp;now);</p><p>m_=
MultiUsrp-&gt;set_time_now(uhd::time_spec_t(now.tv_sec,(double)now.tv_nsec/=
1.0e6));</p><p>uhd::time_spec_t usrp_time =3D m_MultiUsrp-&gt;get_time_now(=
);</p><p>m_MultiUsrp-&gt;set_rx_gain(nGain, 1);</p><p>m_MultiUsrp-&gt;set_r=
x_gain(nGain, 2);</p><p>m_MultiUsrp-&gt;set_rx_gain(nGain, 3);</p><p>uhd::t=
une_request_t tune_req;</p><p>tune_req.rf_freq =3D tune_resp.actual_rf_freq=
;</p><p>tune_req.rf_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;</p>=
<p>tune_req.dsp_freq =3D tune_resp.actual_dsp_freq;</p><p>tune_req.dsp_freq=
_policy =3D uhd::tune_request_t::POLICY_MANUAL;</p><p>m_MultiUsrp-&gt;set_r=
x_freq(tune_req, 1);</p><p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p><p>=
m_MultiUsrp-&gt;set_rx_freq(tune_req, 3);</p><p>usrp_time =3D m_MultiUsrp-&=
gt;get_time_now() ;</p><p>// Synchronize the tuned channels</p><p>m_MultiUs=
rp-&gt;set_command_time(usrp_time + uhd::time_spec_t(0.1));</p><p>m_MultiUs=
rp-&gt;set_rx_freq(tune_req, 0);</p><p>m_MultiUsrp-&gt;set_rx_freq(tune_req=
, 1);</p><p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p><p>m_MultiUsrp-&gt=
;set_rx_freq(tune_req, 3);</p><p>m_MultiUsrp-&gt;clear_command_time();</p><=
p>Thank you.</p><div contenteditable=3D"false"><hr></div><p>USRP-users mail=
ing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></block=
quote></blockquote><p><br></p>

--b2_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0--

--b1_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0
Content-Type: text/x-c; name=rx_multi_samples.cpp
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=rx_multi_samples.cpp

Ly8KLy8gQ29weXJpZ2h0IDIwMTEgRXR0dXMgUmVzZWFyY2ggTExDCi8vIENvcHlyaWdodCAyMDE4
IEV0dHVzIFJlc2VhcmNoLCBhIE5hdGlvbmFsIEluc3RydW1lbnRzIENvbXBhbnkKLy8KLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0zLjAtb3ItbGF0ZXIKLy8KCiNpbmNsdWRlIDx1aGQv
dXRpbHMvdGhyZWFkLmhwcD4KI2luY2x1ZGUgPHVoZC91dGlscy9zYWZlX21haW4uaHBwPgojaW5j
bHVkZSA8dWhkL3VzcnAvbXVsdGlfdXNycC5ocHA+CiNpbmNsdWRlIDxib29zdC9wcm9ncmFtX29w
dGlvbnMuaHBwPgojaW5jbHVkZSA8Ym9vc3QvZm9ybWF0LmhwcD4KI2luY2x1ZGUgPGJvb3N0L2Fs
Z29yaXRobS9zdHJpbmcuaHBwPgojaW5jbHVkZSA8aW9zdHJlYW0+CiNpbmNsdWRlIDxjb21wbGV4
PgojaW5jbHVkZSA8Y2hyb25vPgojaW5jbHVkZSA8dGhyZWFkPgojaW5jbHVkZSA8ZmNudGwuaD4K
Cm5hbWVzcGFjZSBwbyA9IGJvb3N0Ojpwcm9ncmFtX29wdGlvbnM7CgppbnQgVUhEX1NBRkVfTUFJ
TihpbnQgYXJnYywgY2hhciAqYXJndltdKXsKICAgIHVoZDo6c2V0X3RocmVhZF9wcmlvcml0eV9z
YWZlKCk7CgogICAgLy92YXJpYWJsZXMgdG8gYmUgc2V0IGJ5IHBvCiAgICBzdGQ6OnN0cmluZyBh
cmdzLCBzdWJkZXYsIGNoYW5uZWxfbGlzdDsKICAgIGRvdWJsZSBzZWNvbmRzX2luX2Z1dHVyZTsK
ICAgIHNpemVfdCB0b3RhbF9udW1fc2FtcHM7CiAgICBkb3VibGUgcmF0ZTsKICAgIGRvdWJsZSBm
cmVxOwogICAgZG91YmxlIGdhaW47CgogICAgLy9zZXR1cCB0aGUgcHJvZ3JhbSBvcHRpb25zCiAg
ICBwbzo6b3B0aW9uc19kZXNjcmlwdGlvbiBkZXNjKCJBbGxvd2VkIG9wdGlvbnMiKTsKICAgIGRl
c2MuYWRkX29wdGlvbnMoKQogICAgICAgICgiaGVscCIsICJoZWxwIG1lc3NhZ2UiKQogICAgICAg
ICgiYXJncyIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJmFyZ3MpLT5kZWZhdWx0X3ZhbHVlKCIi
KSwgInNpbmdsZSB1aGQgZGV2aWNlIGFkZHJlc3MgYXJncyIpCiAgICAgICAgKCJzZWNzIiwgcG86
OnZhbHVlPGRvdWJsZT4oJnNlY29uZHNfaW5fZnV0dXJlKS0+ZGVmYXVsdF92YWx1ZSgxLjUpLCAi
bnVtYmVyIG9mIHNlY29uZHMgaW4gdGhlIGZ1dHVyZSB0byByZWNlaXZlIikKICAgICAgICAoIm5z
YW1wcyIsIHBvOjp2YWx1ZTxzaXplX3Q+KCZ0b3RhbF9udW1fc2FtcHMpLT5kZWZhdWx0X3ZhbHVl
KDEwMDAwKSwgInRvdGFsIG51bWJlciBvZiBzYW1wbGVzIHRvIHJlY2VpdmUiKQogICAgICAgICgi
cmF0ZSIsIHBvOjp2YWx1ZTxkb3VibGU+KCZyYXRlKS0+ZGVmYXVsdF92YWx1ZSgxMDBlNi8xNiks
ICJyYXRlIG9mIGluY29taW5nIHNhbXBsZXMiKQogICAgICAgICgiZnJlcSIsIHBvOjp2YWx1ZTxk
b3VibGU+KCZmcmVxKS0+ZGVmYXVsdF92YWx1ZSgxLjU3NWU5KSwgImNlbnRlciBmcmVxdWVuY3ki
KQogICAgICAgICgiZ2FpbiIsIHBvOjp2YWx1ZTxkb3VibGU+KCZnYWluKS0+ZGVmYXVsdF92YWx1
ZSgwLjApLCAiZ2FpbiIpCiAgICAgICAgKCJzdWJkZXYiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+
KCZzdWJkZXYpLCAic3ViZGV2IHNwZWMgKGhvbW9nZW5lb3VzIGFjcm9zcyBtb3RoZXJib2FyZHMp
IikKICAgICAgICAoImRpbHYiLCAic3BlY2lmeSB0byBkaXNhYmxlIGlubmVyLWxvb3AgdmVyYm9z
ZSIpCiAgICAgICAgKCJjaGFubmVscyIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJmNoYW5uZWxf
bGlzdCktPmRlZmF1bHRfdmFsdWUoIjAiKSwgIndoaWNoIGNoYW5uZWwocykgdG8gdXNlIChzcGVj
aWZ5IFwiMFwiLCBcIjFcIiwgXCIwLDFcIiwgZXRjKSIpCiAgICA7CiAgICBwbzo6dmFyaWFibGVz
X21hcCB2bTsKICAgIHBvOjpzdG9yZShwbzo6cGFyc2VfY29tbWFuZF9saW5lKGFyZ2MsIGFyZ3Ys
IGRlc2MpLCB2bSk7CiAgICBwbzo6bm90aWZ5KHZtKTsKCiAgICAvL3ByaW50IHRoZSBoZWxwIG1l
c3NhZ2UKICAgIGlmICh2bS5jb3VudCgiaGVscCIpKXsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9v
c3Q6OmZvcm1hdCgiVUhEIFJYIE11bHRpIFNhbXBsZXMgJXMiKSAlIGRlc2MgPDwgc3RkOjplbmRs
OwogICAgICAgIHN0ZDo6Y291dCA8PAogICAgICAgICIgICAgU3BlY2lmeSAtLXN1YmRldiB0byBz
ZWxlY3QgbXVsdGlwbGUgY2hhbm5lbHMgcGVyIG1vdGhlcmJvYXJkLlxuIgogICAgICAgICIgICAg
ICBFeDogLS1zdWJkZXY9XCIwOkEgMDpCXCIgdG8gZ2V0IDIgY2hhbm5lbHMgb24gYSBCYXNpYyBS
WC5cbiIKICAgICAgICAiXG4iCiAgICAgICAgIiAgICBTcGVjaWZ5IC0tYXJncyB0byBzZWxlY3Qg
bXVsdGlwbGUgbW90aGVyYm9hcmRzIGluIGEgY29uZmlndXJhdGlvbi5cbiIKICAgICAgICAiICAg
ICAgRXg6IC0tYXJncz1cImFkZHIwPTE5Mi4xNjguMTAuMiwgYWRkcjE9MTkyLjE2OC4xMC4zXCJc
biIKICAgICAgICA8PCBzdGQ6OmVuZGw7CiAgICAgICAgcmV0dXJuIH4wOwogICAgfQoKICAgIGJv
b2wgdmVyYm9zZSA9IHZtLmNvdW50KCJkaWx2IikgPT0gMDsKCiAgICAvL2NyZWF0ZSBhIHVzcnAg
ZGV2aWNlCiAgICBzdGQ6OmNvdXQgPDwgc3RkOjplbmRsOwogICAgc3RkOjpjb3V0IDw8IGJvb3N0
Ojpmb3JtYXQoIkNyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRoOiAlcy4uLiIpICUgYXJncyA8
PCBzdGQ6OmVuZGw7CiAgICB1aGQ6OnVzcnA6Om11bHRpX3VzcnA6OnNwdHIgdXNycCA9IHVoZDo6
dXNycDo6bXVsdGlfdXNycDo6bWFrZShhcmdzKTsKCiAgICB1aGQ6OmxvZzo6c2V0X2NvbnNvbGVf
bGV2ZWwodWhkOjpsb2c6OnNldmVyaXR5X2xldmVsOjp3YXJuaW5nKTsKCiAgICB1c3JwLT5zZXRf
Y2xvY2tfc291cmNlKCJpbnRlcm5hbCIsMCk7CiAgICAvL2Fsd2F5cyBzZWxlY3QgdGhlIHN1YmRl
dmljZSBmaXJzdCwgdGhlIGNoYW5uZWwgbWFwcGluZyBhZmZlY3RzIHRoZSBvdGhlciBzZXR0aW5n
cwogICAgaWYgKHZtLmNvdW50KCJzdWJkZXYiKSkgdXNycC0+c2V0X3J4X3N1YmRldl9zcGVjKHN1
YmRldik7IC8vc2V0cyBhY3Jvc3MgYWxsIG1ib2FyZHMKCiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6
OmZvcm1hdCgiVXNpbmcgRGV2aWNlOiAlcyIpICUgdXNycC0+Z2V0X3BwX3N0cmluZygpIDw8IHN0
ZDo6ZW5kbDsKCiAgICAvL3NldCB0aGUgcnggc2FtcGxlIHJhdGUgKHNldHMgYWNyb3NzIGFsbCBj
aGFubmVscykKICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJTZXR0aW5nIFJYIFJhdGU6
ICVmIE1zcHMuLi4iKSAlIChyYXRlLzFlNikgPDwgc3RkOjplbmRsOwogICAgdXNycC0+c2V0X3J4
X3JhdGUocmF0ZSk7CiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQWN0dWFsIFJYIFJh
dGU6ICVmIE1zcHMuLi4iKSAlICh1c3JwLT5nZXRfcnhfcmF0ZSgpLzFlNikgPDwgc3RkOjplbmRs
IDw8IHN0ZDo6ZW5kbDsKICAgIAogICAgdXNycC0+c2V0X3RpbWVfdW5rbm93bl9wcHModWhkOjp0
aW1lX3NwZWNfdCgpKTsKICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2ZvcihzdGQ6OmNocm9u
bzo6c2Vjb25kcygxKSk7IC8vd2FpdCBmb3IgcHBzIHN5bmMgcHVsc2UKCiAgICAvL2RldGVjdCB3
aGljaCBjaGFubmVscyB0byB1c2UKICAgIHN0ZDo6dmVjdG9yPHN0ZDo6c3RyaW5nPiBjaGFubmVs
X3N0cmluZ3M7CiAgICBzdGQ6OnZlY3RvcjxzaXplX3Q+IGNoYW5uZWxfbnVtczsKICAgIGJvb3N0
OjpzcGxpdChjaGFubmVsX3N0cmluZ3MsIGNoYW5uZWxfbGlzdCwgYm9vc3Q6OmlzX2FueV9vZigi
XCInLCIpKTsKICAgIGZvcihzaXplX3QgY2ggPSAwOyBjaCA8IGNoYW5uZWxfc3RyaW5ncy5zaXpl
KCk7IGNoKyspewogICAgICAgIHNpemVfdCBjaGFuID0gc3RkOjpzdG9pKGNoYW5uZWxfc3RyaW5n
c1tjaF0pOwogICAgICAgIGlmKGNoYW4gPj0gdXNycC0+Z2V0X3J4X251bV9jaGFubmVscygpKXsK
ICAgICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJJbnZhbGlkIGNoYW5uZWwocykg
c3BlY2lmaWVkLiIpOwogICAgICAgIH0KICAgICAgICBlbHNlIGNoYW5uZWxfbnVtcy5wdXNoX2Jh
Y2soc3RkOjpzdG9pKGNoYW5uZWxfc3RyaW5nc1tjaF0pKTsKICAgIH0KCiAgICAvLyBTZXQgY2hh
bm5lbCBzcGVjaWZpYyBzZXR0aW5ncwogICAgdXNycC0+c2V0X3J4X2dhaW4oZ2FpbiwwKTsKICAg
IHVzcnAtPnNldF9yeF9sb19leHBvcnRfZW5hYmxlZCh0cnVlLCB1c3JwLT5BTExfTE9TLCAwKTsK
ICAgIHVzcnAtPnNldF9yeF9sb19zb3VyY2UoImludGVybmFsIiwgdXNycC0+QUxMX0xPUywgMCk7
CiAgICB1c3JwLT5zZXRfcnhfZGNfb2Zmc2V0KHRydWUsIDApOwogICAgdXNycC0+c2V0X3J4X2dh
aW4oZ2FpbiwxKTsKICAgIHVzcnAtPnNldF9yeF9sb19zb3VyY2UoImNvbXBhbmlvbiIsIHVzcnAt
PkFMTF9MT1MsIDEpOwogICAgdXNycC0+c2V0X3J4X2RjX29mZnNldCh0cnVlLCAxKTsKCiAgICBp
ZihjaGFubmVsX251bXMuc2l6ZSgpID09IDQpIAogICAgewogICAgICAgIHVzcnAtPnNldF9yeF9n
YWluKGdhaW4sIDIpOwoJICAgIHVzcnAtPnNldF9yeF9sb19zb3VyY2UoImV4dGVybmFsIiwgdXNy
cC0+QUxMX0xPUywgMik7CgkgICAgdXNycC0+c2V0X3J4X2RjX29mZnNldCh0cnVlLCAyKTsKCSAg
ICB1c3JwLT5zZXRfcnhfZ2FpbihnYWluLCAzKTsKCSAgICB1c3JwLT5zZXRfcnhfbG9fc291cmNl
KCJleHRlcm5hbCIsIHVzcnAtPkFMTF9MT1MsIDMpOwoJICAgIHVzcnAtPnNldF9yeF9kY19vZmZz
ZXQodHJ1ZSwgMyk7CiAgICB9CgogICAgLy8gVHVuZSBhbGwgY2hhbm5lbHMgdG8gdGhlIGRlc2ly
ZWQgZnJlcXVlbmN5CiAgICB1aGQ6OnR1bmVfcmVzdWx0X3QgdHVuZV9yZXNwID0gdXNycC0+c2V0
X3J4X2ZyZXEoZnJlcSwwKTsKICAgIHVoZDo6dHVuZV9yZXF1ZXN0X3QgdHVuZV9yZXE7CiAgICB0
dW5lX3JlcS5yZl9mcmVxID0gZnJlcTsKICAgIHR1bmVfcmVxLnJmX2ZyZXFfcG9saWN5ID0gdWhk
Ojp0dW5lX3JlcXVlc3RfdDo6UE9MSUNZX01BTlVBTDsKICAgIHR1bmVfcmVxLmRzcF9mcmVxID0g
dHVuZV9yZXNwLmFjdHVhbF9kc3BfZnJlcTsKICAgIHR1bmVfcmVxLmRzcF9mcmVxX3BvbGljeSA9
IHVoZDo6dHVuZV9yZXF1ZXN0X3Q6OlBPTElDWV9NQU5VQUw7CgogICAgdXNycC0+c2V0X3J4X2Zy
ZXEodHVuZV9yZXEsMSk7CiAgICBpZihjaGFubmVsX251bXMuc2l6ZSgpID09IDQpIAogICAgewog
ICAgICAgIHVzcnAtPnNldF9yeF9mcmVxKHR1bmVfcmVxLDIpOwogICAgICAgIHVzcnAtPnNldF9y
eF9mcmVxKHR1bmVfcmVxLDMpOwogICAgfQogICAgCiAgICAvLyBTeW5jaHJvbml6ZSB0aGUgdHVu
ZWQgY2hhbm5lbHMKICAgIHVoZDo6dGltZV9zcGVjX3Qgbm93ID0gdXNycC0+Z2V0X3RpbWVfbm93
KCk7CiAgICB1c3JwLT5zZXRfY29tbWFuZF90aW1lKG5vdyArIHVoZDo6dGltZV9zcGVjX3QoMC4w
MSkpOwogICAgdXNycC0+c2V0X3J4X2ZyZXEodHVuZV9yZXEsMCk7CiAgICB1c3JwLT5zZXRfcnhf
ZnJlcSh0dW5lX3JlcSwxKTsKICAgIGlmKGNoYW5uZWxfbnVtcy5zaXplKCkgPT0gNCkgCiAgICB7
CiAgICAgICAgdXNycC0+c2V0X3J4X2ZyZXEodHVuZV9yZXEsMik7CiAgICAgICAgdXNycC0+c2V0
X3J4X2ZyZXEodHVuZV9yZXEsMyk7CiAgICB9CgogICAgdXNycC0+Y2xlYXJfY29tbWFuZF90aW1l
KCk7CgogICAgLy9jcmVhdGUgYSByZWNlaXZlciBzdHJlYW1lcgogICAgLy9saW5lYXJseSBtYXAg
Y2hhbm5lbHMgKGluZGV4MCA9IGNoYW5uZWwwLCBpbmRleDEgPSBjaGFubmVsMSwgLi4uKQogICAg
dWhkOjpzdHJlYW1fYXJnc190IHN0cmVhbV9hcmdzKCJmYzMyIik7IC8vY29tcGxleCBmbG9hdHMK
ICAgIHN0cmVhbV9hcmdzLmNoYW5uZWxzID0gY2hhbm5lbF9udW1zOwogICAgdWhkOjpyeF9zdHJl
YW1lcjo6c3B0ciByeF9zdHJlYW0gPSB1c3JwLT5nZXRfcnhfc3RyZWFtKHN0cmVhbV9hcmdzKTsK
CiAgICAvL3NldHVwIHN0cmVhbWluZwogICAgc3RkOjpjb3V0IDw8IHN0ZDo6ZW5kbDsKICAgIHN0
ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KAogICAgICAgICJCZWdpbiBzdHJlYW1pbmcgJXUgc2Ft
cGxlcywgJWYgc2Vjb25kcyBpbiB0aGUgZnV0dXJlLi4uIgogICAgKSAlIHRvdGFsX251bV9zYW1w
cyAlIHNlY29uZHNfaW5fZnV0dXJlIDw8IHN0ZDo6ZW5kbDsKCiAgICB1aGQ6OnN0cmVhbV9jbWRf
dCBzdHJlYW1fY21kKHVoZDo6c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9OVU1fU0FNUFNfQU5E
X0RPTkUpOwogICAgc3RyZWFtX2NtZC5udW1fc2FtcHMgPSB0b3RhbF9udW1fc2FtcHM7CiAgICBz
dHJlYW1fY21kLnN0cmVhbV9ub3cgPSBmYWxzZTsKICAgIGlmIChzZWNvbmRzX2luX2Z1dHVyZSA8
IDAuMSkKICAgIHsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgKICAgICAgICAg
ICAgICAgICAgICAgICAgICJTZXR0aW5nIHJlYXNvbmFibGUgZGVsYXk6ICVmIikgJQogICAgICAg
ICAgICAgICAgICAgICAgICAgc2Vjb25kc19pbl9mdXR1cmUKICAgICAgICAgICAgICAgICAgPDwg
c3RkOjplbmRsOwogICAgICAgIHNlY29uZHNfaW5fZnV0dXJlID0gMC4xOwogICAgfQogICAgc3Ry
ZWFtX2NtZC50aW1lX3NwZWMgPSB1c3JwLT5nZXRfdGltZV9ub3coKSArIHVoZDo6dGltZV9zcGVj
X3Qoc2Vjb25kc19pbl9mdXR1cmUpOwogICAgcnhfc3RyZWFtLT5pc3N1ZV9zdHJlYW1fY21kKHN0
cmVhbV9jbWQpOyAvLyB0ZWxscyBhbGwgY2hhbm5lbHMgdG8gc3RyZWFtCgogICAgLy9tZXRhLWRh
dGEgd2lsbCBiZSBmaWxsZWQgaW4gYnkgcmVjdigpCiAgICB1aGQ6OnJ4X21ldGFkYXRhX3QgbWQ7
CgogICAgLy9hbGxvY2F0ZSBidWZmZXJzIHRvIHJlY2VpdmUgd2l0aCBzYW1wbGVzIChvbmUgYnVm
ZmVyIHBlciBjaGFubmVsKQogICAgY29uc3Qgc2l6ZV90IHNhbXBzX3Blcl9idWZmID0gcnhfc3Ry
ZWFtLT5nZXRfbWF4X251bV9zYW1wcygpOwogICAgc3RkOjp2ZWN0b3I8c3RkOjp2ZWN0b3I8c3Rk
Ojpjb21wbGV4PGZsb2F0PiA+ID4gYnVmZnMoCiAgICAgICAgY2hhbm5lbF9udW1zLnNpemUoKSwg
c3RkOjp2ZWN0b3I8c3RkOjpjb21wbGV4PGZsb2F0PiA+KHRvdGFsX251bV9zYW1wcykKICAgICk7
CgogICAgLy9jcmVhdGUgYSB2ZWN0b3Igb2YgcG9pbnRlcnMgdG8gcG9pbnQgdG8gZWFjaCBvZiB0
aGUgY2hhbm5lbCBidWZmZXJzCiAgICBzdGQ6OnZlY3RvcjxzdGQ6OmNvbXBsZXg8ZmxvYXQ+ICo+
IGJ1ZmZfcHRycyhidWZmcy5zaXplKCkpOwoKICAgIC8vdGhlIGZpcnN0IGNhbGwgdG8gcmVjdigp
IHdpbGwgYmxvY2sgdGhpcyBtYW55IHNlY29uZHMgYmVmb3JlIHJlY2VpdmluZwogICAgZG91Ymxl
IHRpbWVvdXQgPSBzZWNvbmRzX2luX2Z1dHVyZSArIDEuMDsgLy90aW1lb3V0IChkZWxheSBiZWZv
cmUgcmVjZWl2ZSArIHBhZGRpbmcpCgogICAgc2l6ZV90IG51bV9hY2Nfc2FtcHMgPSAwOyAvL251
bWJlciBvZiBhY2N1bXVsYXRlZCBzYW1wbGVzCiAgICB3aGlsZShudW1fYWNjX3NhbXBzIDwgdG90
YWxfbnVtX3NhbXBzKXsKICAgICAgICBmb3IgKHNpemVfdCBpID0gMDsgaSA8IGJ1ZmZzLnNpemUo
KTsgaSsrKSBidWZmX3B0cnNbaV0gPSAmYnVmZnNbaV0uZnJvbnQoKStudW1fYWNjX3NhbXBzOwog
ICAgICAgIC8vcmVjZWl2ZSBhIHNpbmdsZSBwYWNrZXQKICAgICAgICBzaXplX3QgbnVtX3J4X3Nh
bXBzID0gcnhfc3RyZWFtLT5yZWN2KAogICAgICAgICAgICBidWZmX3B0cnMsIHNhbXBzX3Blcl9i
dWZmLCBtZCwgdGltZW91dAogICAgICAgICk7CgogICAgICAgIC8vdXNlIGEgc21hbGwgdGltZW91
dCBmb3Igc3Vic2VxdWVudCBwYWNrZXRzCiAgICAgICAgdGltZW91dCA9IDAuMTsKCiAgICAgICAg
Ly9oYW5kbGUgdGhlIGVycm9yIGNvZGUKICAgICAgICBpZiAobWQuZXJyb3JfY29kZSA9PSB1aGQ6
OnJ4X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfVElNRU9VVCkgYnJlYWs7CiAgICAgICAgaWYgKG1k
LmVycm9yX2NvZGUgIT0gdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX05PTkUpewogICAg
ICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3Ioc3RyKGJvb3N0Ojpmb3JtYXQoCiAgICAg
ICAgICAgICAgICAiUmVjZWl2ZXIgZXJyb3IgJXMiCiAgICAgICAgICAgICkgJSBtZC5zdHJlcnJv
cigpKSk7CiAgICAgICAgfQoKICAgICAgICBpZih2ZXJib3NlKSBzdGQ6OmNvdXQgPDwgYm9vc3Q6
OmZvcm1hdCgKICAgICAgICAgICAgIlJlY2VpdmVkIHBhY2tldDogJXUgc2FtcGxlcywgJXUgZnVs
bCBzZWNzLCAlZiBmcmFjIHNlY3MiCiAgICAgICAgKSAlIG51bV9yeF9zYW1wcyAlIG1kLnRpbWVf
c3BlYy5nZXRfZnVsbF9zZWNzKCkgJSBtZC50aW1lX3NwZWMuZ2V0X2ZyYWNfc2VjcygpIDw8IHN0
ZDo6ZW5kbDsKCiAgICAgICAgbnVtX2FjY19zYW1wcyArPSBudW1fcnhfc2FtcHM7CiAgICB9Cgog
ICAgaW50IGZkW2NoYW5uZWxfbnVtcy5zaXplKCldOwogICAgZm9yIChzaXplX3QgaSA9IDA7IGkg
PCBidWZmcy5zaXplKCk7IGkrKykgewogICAgICBjaGFyIGZpbGVuYW1lWzMwXTsKICAgICAgc3By
aW50ZihmaWxlbmFtZSwic2FtcGxlc18lbGkuZGF0IiwgaSk7CiAgICAgIGZkW2ldID0gb3Blbihm
aWxlbmFtZSwgT19XUk9OTFkgfCBPX0NSRUFUIHwgT19UUlVOQywgMDY2Nik7CgogICAgICBpbnQg
cmV0ID0gd3JpdGUoZmRbaV0sICZidWZmc1tpXVswXSwgc2l6ZW9mKGJ1ZmZzW2ldWzBdKSp0b3Rh
bF9udW1fc2FtcHMpOwogICAgICBpZiAoIHJldCA8IDAgKSBwZXJyb3IoIndyaXRlIik7CiAgICB9
CgogICAgZm9yICggc2l6ZV90IGkgPSAwOyBpIDwgY2hhbm5lbF9udW1zLnNpemUoKTsgaSsrKSBj
bG9zZShmZFtpXSk7CgogICAgaWYgKG51bV9hY2Nfc2FtcHMgPCB0b3RhbF9udW1fc2FtcHMpIHN0
ZDo6Y2VyciA8PCAiUmVjZWl2ZSB0aW1lb3V0IGJlZm9yZSBhbGwgc2FtcGxlcyByZWNlaXZlZC4u
LiIgPDwgc3RkOjplbmRsOwoKICAgIC8vZmluaXNoZWQKICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVu
ZGwgPDwgIkRvbmUhIiA8PCBzdGQ6OmVuZGwgPDwgc3RkOjplbmRsOwoKICAgIHJldHVybiBFWElU
X1NVQ0NFU1M7Cn0K

--b1_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0--
