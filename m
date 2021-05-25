Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 849693900E2
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 14:24:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88571384023
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 08:24:08 -0400 (EDT)
Received: from mxout2.rambler.ru (mxout2.rambler.ru [81.19.78.101])
	by mm2.emwd.com (Postfix) with ESMTPS id 1ADAF383FCA
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 08:23:11 -0400 (EDT)
Received: from localhost (0vm0040.prod.mail.rambler.tech [10.132.200.30])
	by mxout2.rambler.ru (Postfix) with ESMTP id 9868C8DC0B7
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 15:23:10 +0300 (MSK)
Date: Tue, 25 May 2021 12:23:10 +0000
Mime-Version: 1.0
Message-Id: <830ab06b95e9d2802b0a4a2455f6b301@mail.rambler.ru>
In-Reply-To: <0f34e1d2b5e7b77bc818377793c427dd@mail.rambler.ru>
References: <0f34e1d2b5e7b77bc818377793c427dd@mail.rambler.ru>
	<2a9683d393b9962474a1e25b84853e3a@mail.rambler.ru>
To: "Usrp Users" <usrp-users@lists.ettus.com>
X-Mailer: Rambler Compose (1018495), https://mail.rambler.ru
Message-ID-Hash: 7PIFO7755ZCZNCPCE3SEMNPHOQVNEG4D
X-Message-ID-Hash: 7PIFO7755ZCZNCPCE3SEMNPHOQVNEG4D
X-MailFrom: andrew4010@rambler.ru
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7PIFO7755ZCZNCPCE3SEMNPHOQVNEG4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?b?0JDQvdC00YDQtdC5INCQIHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?b?0JDQvdC00YDQtdC5INCQ?= <andrew4010@rambler.ru>
Content-Type: multipart/mixed; boundary="===============8845706641674912620=="

--===============8845706641674912620==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary="==bound.0.4fb60ca2f73264b068b523a2bc1f40b4.mail.rambler.ru=="

--==bound.0.4fb60ca2f73264b068b523a2bc1f40b4.mail.rambler.ru==
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Content-Type: text/plain; charset=utf-8

#include <stdio.h> #include <time.h> #include <uhd.h>
#define SR 25 #define BW 20 #define MHzToHz 1e+6
uint64_t get_posix_clock_time () { struct timespec ts;
if (clock_gettime (CLOCK_MONOTONIC, &ts) =3D=3D 0) return (uint64_t) (ts.tv=
_sec * 1000000 + ts.tv_nsec / 1000); else return 0; }
uhd_error createLockedSensor(uhd_usrp_handle hDevice,uhd_sensor_value_handl=
e *hSensor) { uhd_error r;
r =3D uhd_sensor_value_make_from_bool(hSensor,"lo_locked",false,"true","fal=
se"); if (r) return r;
r =3D uhd_usrp_get_rx_sensor(hDevice,"lo_locked",0,hSensor); if (r) uhd_sen=
sor_value_free(hSensor); return r; }
uhd_error setFreq(uhd_usrp_handle hDevice,uhd_sensor_value_handle hSensor,d=
ouble f) { uhd_tune_request_t tune_request =3D {.target_freq =3D f,.rf_freq=
_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO,.dsp_freq_policy =3D UHD_TUNE_REQU=
EST_POLICY_AUTO, }; uhd_tune_result_t tune_result;
uhd_error r; bool lo_locked;
r =3D uhd_usrp_set_rx_freq(hDevice,&tune_request,0,&tune_result); if(r=3D=
=3DUHD_ERROR_NONE && hSensor) do { uhd_sensor_value_to_bool(hSensor,&lo_loc=
ked); } while (!lo_locked);
return r; }
int main() { uhd_error r;
uhd_usrp_handle hDevice =3D 0; uhd_sensor_value_handle hSensor=3D0;
r =3D uhd_usrp_make(&hDevice,""); if (r) goto free_device;
r =3D createLockedSensor(hDevice,&hSensor); if (r) goto free_device;
if (hDevice) { int f_start,f_count;
printf ("Enter start freq [MHz]: "); scanf ("%d",&f_start);
printf ("Enter freq count: "); scanf ("%d",&f_count); if (f_count < 1) goto=
 free_device;
uint64_t t0,t;
bool reverse =3D false;
for(int k=3D3;k>0;--k) { int f;
if (reverse) f =3D f_start+BW*(f_count-1); else f =3D f_start;
t=3Dget_posix_clock_time(); for(int i=3D0;i<f_count;i++) { t0 =3D get_posix=
_clock_time(); setFreq(hDevice,hSensor,f*MHzToHz); t0 =3D get_posix_clock_t=
ime() - t0; printf ("f: %d t: %2.1f \n",f,t0*1e-3); f =3D (reverse) ? f-BW:=
f+BW; } t =3D get_posix_clock_time() - t;
reverse=3D!reverse;
printf (">> scan time: %2.1f \n",t*1e-3); } }
free_device: if (hDevice) uhd_usrp_free(&hDevice); if (hSensor) uhd_sensor_=
value_free(&hSensor);
return 0; }

--==bound.0.4fb60ca2f73264b068b523a2bc1f40b4.mail.rambler.ru==
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Content-Type: text/html; charset=utf-8

<div><div>#include &lt;stdio.h&gt;<br>#include &lt;time.h&gt;<br>#include &=
lt;uhd.h&gt;</div><div>#define SR 25<br>#define BW 20<br>#define MHzToHz 1e=
+6</div><div>uint64_t get_posix_clock_time ()<br>{<br> struct timespec ts;<=
/div><div>if (clock_gettime (CLOCK_MONOTONIC, &amp;ts) =3D=3D 0)<br> return=
 (uint64_t) (ts.tv_sec * 1000000 + ts.tv_nsec / 1000);<br> else<br> return =
0;<br>}</div><div>uhd_error createLockedSensor(uhd_usrp_handle hDevice,uhd_=
sensor_value_handle *hSensor)<br>{<br> uhd_error r;</div><div>r =3D uhd_sen=
sor_value_make_from_bool(hSensor,"lo_locked",false,"true","false");<br> if =
(r) return r;</div><div>r =3D uhd_usrp_get_rx_sensor(hDevice,"lo_locked",0,=
hSensor);<br> if (r)<br> uhd_sensor_value_free(hSensor);<br> return r;<br>}=
</div><div>uhd_error setFreq(uhd_usrp_handle hDevice,uhd_sensor_value_handl=
e hSensor,double f)<br>{<br> uhd_tune_request_t tune_request =3D<br> {<br> =
.target_freq =3D f,<br> .rf_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO,<b=
r> .dsp_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO,<br> };<br> uhd_tune_r=
esult_t tune_result;</div><div>uhd_error r;<br> bool lo_locked;</div><div>r=
 =3D uhd_usrp_set_rx_freq(hDevice,&amp;tune_request,0,&amp;tune_result);<br=
> if(r=3D=3DUHD_ERROR_NONE &amp;&amp; hSensor)<br> do<br> {<br> uhd_sensor_=
value_to_bool(hSensor,&amp;lo_locked);<br> }<br> while (!lo_locked);</div><=
div>return r;<br>}</div><div>int main()<br>{<br> uhd_error r;</div><div>uhd=
_usrp_handle hDevice =3D 0;<br> uhd_sensor_value_handle hSensor=3D0;</div><=
div>r =3D uhd_usrp_make(&amp;hDevice,"");<br> if (r) goto free_device;</div=
><div>r =3D createLockedSensor(hDevice,&amp;hSensor);<br> if (r) goto free_=
device;</div><div>if (hDevice)<br> {<br> int f_start,f_count;</div><div>pri=
ntf ("Enter start freq [MHz]: ");<br> scanf ("%d",&amp;f_start);</div><div>=
printf ("Enter freq count: ");<br> scanf ("%d",&amp;f_count);<br> if (f_cou=
nt &lt; 1) goto free_device;</div><div>uint64_t t0,t;</div><div>bool revers=
e =3D false;</div><div>for(int k=3D3;k&gt;0;--k)<br> {<br> int f;</div><div=
>if (reverse)<br> f =3D f_start+BW*(f_count-1);<br> else<br> f =3D f_start;=
</div><div>t=3Dget_posix_clock_time();<br> for(int i=3D0;i&lt;f_count;i++)<=
br> {<br> t0 =3D get_posix_clock_time();<br> setFreq(hDevice,hSensor,f*MHzT=
oHz);<br> t0 =3D get_posix_clock_time() - t0;<br> printf ("f: %d t: %2.1f \=
n",f,t0*1e-3);<br> f =3D (reverse) ? f-BW:f+BW;<br> }<br> t =3D get_posix_c=
lock_time() - t;</div><div>reverse=3D!reverse;</div><div>printf ("&gt;&gt; =
scan time: %2.1f \n",t*1e-3);<br> }<br> }</div><div>free_device:<br> if (hD=
evice)<br> uhd_usrp_free(&amp;hDevice);<br> if (hSensor)<br> uhd_sensor_val=
ue_free(&amp;hSensor);</div><div>return 0;<br>}<br></div></div><div><div cl=
ass=3D"messageBodyContainer" id=3D"part0"><div class=3D"messageBodyContaine=
r isInnerPart" id=3D"part2"><div class=3D"messageBody isFormattedText"><div=
 class=3D"RMCRKHDE"><div class=3D"RMCRKHDE messageBodyContainer" id=3D"RMCR=
KHDEpart0"><div class=3D"RMCRKHDE messageBodyContainer" id=3D"RMCRKHDEpart"=
><div class=3D"RMCRKHDE messageBodyContainer" id=3D"RMCRKHDEpart"><br></div=
></div><div class=3D"RMCRKHDE messageBodyContainer isInnerPart" id=3D"RMCRK=
HDEpart3"><div class=3D"RMCRKHDE messageBodyContainer" id=3D"RMCRKHDEpart3"=
><br></div></div><div class=3D"RMCRKHDE messageBodyContainer" id=3D"RMCRKHD=
Epart"><div class=3D"RMCRKHDE messageBodyContainer" id=3D"RMCRKHDEpart"><br=
></div></div></div></div></div></div></div></div>
--==bound.0.4fb60ca2f73264b068b523a2bc1f40b4.mail.rambler.ru==--

--===============8845706641674912620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8845706641674912620==--
