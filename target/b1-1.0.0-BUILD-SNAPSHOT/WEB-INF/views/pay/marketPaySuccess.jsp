<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>영화 그 이상의 감동 CGV</title>
<meta name="robots" content="noindex,nofollow" />
<!-- <meta name="viewport" content="width=device-width; initial-scale=1.0;" /> -->

<link
	href="${pageContext.request.contextPath}/resources/css/layout/header.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/pay/receipt.css"
	rel="stylesheet">

</head>
<body>
	<!-- Header -->
	<header>
		<c:import url="../layout/header.jsp" />
	</header>



	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tr>
			<td height="20"></td>
		</tr>
		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 10px 10px 0 0;">
					<tr class="hiddenMobile">
						<td height="40"></td>
					</tr>
					<tr class="visibleMobile">
						<td height="30"></td>
					</tr>

					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="left" class="col">
												<tbody>
													<tr>
														<td align="left"><a href="../"><img
																src="../resources/images/header/CGV_BI4.png" alt="logo"
																border="0" style="width: 50%" /></a></td>
													</tr>
													<tr class="hiddenMobile">
														<td height="40"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
															CGV에서 결제하신 내역으로, 구매정보는 마이페이지에서 다시 확인이 가능합니다.</td>
													</tr>
												</tbody>
											</table>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="right" class="col">
												<tbody>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td
															style="font-size: 21px; color: #ff0000; letter-spacing: -1px; font-family: 'Open Sans', sans-serif; line-height: 1; vertical-align: top; text-align: right;">
															Receipt</td>
													</tr>
													<tr>
													<tr class="hiddenMobile">
														<td height="50"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: right;">
															<small>ORDER</small>${pay.partner_order_id}<br /> <small>${pay.approved_at}</small>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<!-- /Header -->
	<!-- Order Details -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
											<fmt:parseNumber value="${total_amount}" type="number"
												var="amount" />
											<fmt:parseNumber value="${total_price}" type="number"
												var="price" />
											<c:set value="${camount}" var="am" />
											<c:set value="${sprice}" var="pr" />
											<c:set value="${sname}" var="sm" />
											<c:set var="prs" value="${fn:length(pr)}" />
											<c:forEach begin="0" end="${prs-1}" var="i">
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 10px 0;"
														class="article">${sm[i]}</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="center">${am[i]}</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="right">₩ <fmt:formatNumber value="${pr[i]}"
															pattern="#,###.##" /></td>
												</tr>
											</c:forEach>
											<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>

										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Order Details -->
	<!-- Total -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
								<td>
									<!-- Table Total -->
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
													<strong>Grand Total (Incl.Tax)</strong>
												</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
													<strong>₩ <fmt:formatNumber
															value="${pay.amount.total}" pattern="#,###.##" /></strong>
												</td>
											</tr>
										</tbody>
									</table> <!-- /Table Total -->

								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Total -->
	<!-- Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="left" class="col">

														<tbody>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>결제 방식</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	${pay.payment_method_type}<br>${pay.card_info.issuer_corp}<br>
																	<c:if test="${not empty pay.card_info.issuer_corp }">승인 번호 : ${pay.card_info.approved_id}<br>
																	</c:if>
																</td>
															</tr>
														</tbody>
													</table>


													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="right" class="col">
														<tbody>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td><img
																	style="position: absolute; width: 5%; margin-left: 140px; margin-top: 20px; opacity: 50%;"
																	class="age" alt=""
																	src="../resources/images/movieSelect/pop_corn_D.png">
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="30"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">

		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 0 0 10px 10px;">
					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td
											style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
											영화 그 이상의 감동. CGV
											<div
												style="transform: rotate(-268deg); display: inline-block; margin-left: 5px;">
												;)</div>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr class="spacer">
						<td height="50"></td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>
</body>
</html>